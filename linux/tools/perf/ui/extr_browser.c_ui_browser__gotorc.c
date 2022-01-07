
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {scalar_t__ x; scalar_t__ extra_title_lines; scalar_t__ y; } ;


 int SLsmg_gotorc (scalar_t__,scalar_t__) ;

void ui_browser__gotorc(struct ui_browser *browser, int y, int x)
{
 SLsmg_gotorc(browser->y + y + browser->extra_title_lines, browser->x + x);
}
