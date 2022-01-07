
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {scalar_t__ nr_entries; struct list_head* top; struct list_head* entries; } ;
struct list_head {int prev; int next; } ;
typedef scalar_t__ off_t ;





 int assert (int ) ;
 struct list_head* ui_browser__list_head_filter_entries (struct ui_browser*,int ) ;
 struct list_head* ui_browser__list_head_filter_prev_entries (struct ui_browser*,int ) ;

void ui_browser__list_head_seek(struct ui_browser *browser, off_t offset, int whence)
{
 struct list_head *head = browser->entries;
 struct list_head *pos;

 if (browser->nr_entries == 0)
  return;

 switch (whence) {
 case 128:
  pos = ui_browser__list_head_filter_entries(browser, head->next);
  break;
 case 130:
  pos = browser->top;
  break;
 case 129:
  pos = ui_browser__list_head_filter_prev_entries(browser, head->prev);
  break;
 default:
  return;
 }

 assert(pos != ((void*)0));

 if (offset > 0) {
  while (offset-- != 0)
   pos = ui_browser__list_head_filter_entries(browser, pos->next);
 } else {
  while (offset++ != 0)
   pos = ui_browser__list_head_filter_prev_entries(browser, pos->prev);
 }

 browser->top = pos;
}
