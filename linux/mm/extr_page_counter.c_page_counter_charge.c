
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_counter {long watermark; int usage; struct page_counter* parent; } ;


 long atomic_long_add_return (unsigned long,int *) ;
 int propagate_protected_usage (struct page_counter*,long) ;

void page_counter_charge(struct page_counter *counter, unsigned long nr_pages)
{
 struct page_counter *c;

 for (c = counter; c; c = c->parent) {
  long new;

  new = atomic_long_add_return(nr_pages, &c->usage);
  propagate_protected_usage(counter, new);




  if (new > c->watermark)
   c->watermark = new;
 }
}
