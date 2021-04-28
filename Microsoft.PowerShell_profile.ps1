Import-Module PSReadLine                                                                                                                                                                                                                                                                                                                                                                                                                                                                # Shows navigable menu of all options when hitting Tab                                                                                                                                                                                      Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete                                                                                                                                                                                                                                                                                                                                                                                                                                # Autocompleteion for Arrow keys                                                                                                                                                                                                            Set-PSReadLineOption -HistorySearchCursorMovesToEnd                                                                                                                                                                                         
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History

#Set the color for Prediction (auto-suggestion)
Set-PSReadLineOption -Colors @{InlinePrediction = "Green"} 
Set-PSReadLineOption -Colors @{Emphasis = "White"} 

# Set Oh my Posh theme
Set-PoshPrompt -Theme microverse-power 
