
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int (* filter ) (struct ui_browser*,struct list_head*) ;struct list_head* entries; } ;
struct list_head {struct list_head* prev; } ;


 int stub1 (struct ui_browser*,struct list_head*) ;

__attribute__((used)) static struct list_head *
ui_browser__list_head_filter_prev_entries(struct ui_browser *browser,
       struct list_head *pos)
{
 do {
  if (!browser->filter || !browser->filter(browser, pos))
   return pos;
  pos = pos->prev;
 } while (pos != browser->entries);

 return ((void*)0);
}
