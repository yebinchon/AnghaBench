
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int dummy; } ;


 int ui_browser__warning (struct ui_browser*,int,char*) ;

__attribute__((used)) static void ui_browser__warn_lost_events(struct ui_browser *browser)
{
 ui_browser__warning(browser, 4,
  "Events are being lost, check IO/CPU overload!\n\n"
  "You may want to run 'perf' using a RT scheduler policy:\n\n"
  " perf top -r 80\n\n"
  "Or reduce the sampling frequency.");
}
