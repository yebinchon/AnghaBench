
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_counter {struct page_counter* parent; } ;


 int page_counter_cancel (struct page_counter*,unsigned long) ;

void page_counter_uncharge(struct page_counter *counter, unsigned long nr_pages)
{
 struct page_counter *c;

 for (c = counter; c; c = c->parent)
  page_counter_cancel(c, nr_pages);
}
