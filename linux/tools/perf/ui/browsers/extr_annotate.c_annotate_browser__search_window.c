
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotate_browser {int * search_bf; } ;


 scalar_t__ K_ENTER ;
 scalar_t__ ui_browser__input_window (char*,char*,int *,char*,int) ;

__attribute__((used)) static bool annotate_browser__search_window(struct annotate_browser *browser,
         int delay_secs)
{
 if (ui_browser__input_window("Search", "String: ", browser->search_bf,
         "ENTER: OK, ESC: Cancel",
         delay_secs * 2) != K_ENTER ||
     !*browser->search_bf)
  return 0;

 return 1;
}
