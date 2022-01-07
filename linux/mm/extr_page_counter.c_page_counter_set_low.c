
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_counter {unsigned long low; int usage; struct page_counter* parent; } ;


 int atomic_long_read (int *) ;
 int propagate_protected_usage (struct page_counter*,int ) ;

void page_counter_set_low(struct page_counter *counter, unsigned long nr_pages)
{
 struct page_counter *c;

 counter->low = nr_pages;

 for (c = counter; c; c = c->parent)
  propagate_protected_usage(c, atomic_long_read(&c->usage));
}
