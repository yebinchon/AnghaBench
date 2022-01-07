
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int next; } ;
struct TYPE_2__ {struct list_head* prev; } ;
struct buffer_page {TYPE_1__ list; } ;


 TYPE_1__* rb_list_head (int ) ;

__attribute__((used)) static bool rb_is_reader_page(struct buffer_page *page)
{
 struct list_head *list = page->list.prev;

 return rb_list_head(list->next) != &page->list;
}
