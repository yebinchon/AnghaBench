
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int width; scalar_t__ priv; } ;


 int HE_COLORSET_NORMAL ;
 int HE_COLORSET_SELECTED ;
 unsigned long strlen (char*) ;
 int ui_browser__is_current_entry (struct ui_browser*,int) ;
 int ui_browser__set_color (struct ui_browser*,int ) ;
 int ui_browser__write_nstring (struct ui_browser*,char*,int ) ;

__attribute__((used)) static void ui_browser__argv_write(struct ui_browser *browser,
       void *entry, int row)
{
 char **arg = entry;
 char *str = *arg;
 char empty[] = " ";
 bool current_entry = ui_browser__is_current_entry(browser, row);
 unsigned long offset = (unsigned long)browser->priv;

 if (offset >= strlen(str))
  str = empty;
 else
  str = str + offset;

 ui_browser__set_color(browser, current_entry ? HE_COLORSET_SELECTED :
             HE_COLORSET_NORMAL);

 ui_browser__write_nstring(browser, str, browser->width);
}
