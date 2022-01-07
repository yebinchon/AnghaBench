
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct popup_action {int fn; } ;
struct hist_browser {int hbt; } ;


 scalar_t__ asprintf (char**,char*) ;
 int do_switch_data ;
 int is_report_browser (int ) ;

__attribute__((used)) static int
add_switch_opt(struct hist_browser *browser,
        struct popup_action *act, char **optstr)
{
 if (!is_report_browser(browser->hbt))
  return 0;

 if (asprintf(optstr, "Switch to another data file in PWD") < 0)
  return 0;

 act->fn = do_switch_data;
 return 1;
}
