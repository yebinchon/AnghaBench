
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ui_browser__set_percent_color (void*,double,int) ;

__attribute__((used)) static void annotate_browser__set_percent_color(void *browser, double percent, bool current)
{
 ui_browser__set_percent_color(browser, percent, current);
}
