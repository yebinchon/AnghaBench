
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_counter {long max; long watermark; struct page_counter* parent; int failcnt; int usage; } ;


 long atomic_long_add_return (unsigned long,int *) ;
 int atomic_long_sub (unsigned long,int *) ;
 int page_counter_cancel (struct page_counter*,unsigned long) ;
 int propagate_protected_usage (struct page_counter*,long) ;

bool page_counter_try_charge(struct page_counter *counter,
        unsigned long nr_pages,
        struct page_counter **fail)
{
 struct page_counter *c;

 for (c = counter; c; c = c->parent) {
  long new;
  new = atomic_long_add_return(nr_pages, &c->usage);
  if (new > c->max) {
   atomic_long_sub(nr_pages, &c->usage);
   propagate_protected_usage(counter, new);




   c->failcnt++;
   *fail = c;
   goto failed;
  }
  propagate_protected_usage(counter, new);




  if (new > c->watermark)
   c->watermark = new;
 }
 return 1;

failed:
 for (c = counter; c != *fail; c = c->parent)
  page_counter_cancel(c, nr_pages);

 return 0;
}
