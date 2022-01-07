
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {scalar_t__ width; } ;


 int HE_COLORSET_ROOT ;
 int SLsmg_gotorc (int ,int ) ;
 int ui_browser__set_color (struct ui_browser*,int ) ;
 int ui_browser__write_nstring (struct ui_browser*,char const*,scalar_t__) ;

void __ui_browser__show_title(struct ui_browser *browser, const char *title)
{
 SLsmg_gotorc(0, 0);
 ui_browser__set_color(browser, HE_COLORSET_ROOT);
 ui_browser__write_nstring(browser, title, browser->width + 1);
}
