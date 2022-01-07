
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int dummy; } ;


 int ui_browser__percent_color (struct ui_browser*,double,int) ;
 int ui_browser__set_color (struct ui_browser*,int) ;

void ui_browser__set_percent_color(struct ui_browser *browser,
       double percent, bool current)
{
  int color = ui_browser__percent_color(browser, percent, current);
  ui_browser__set_color(browser, color);
}
