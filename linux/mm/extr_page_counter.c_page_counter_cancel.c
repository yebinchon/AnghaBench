
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_counter {int usage; } ;


 int WARN_ON_ONCE (int) ;
 long atomic_long_sub_return (unsigned long,int *) ;
 int propagate_protected_usage (struct page_counter*,long) ;

void page_counter_cancel(struct page_counter *counter, unsigned long nr_pages)
{
 long new;

 new = atomic_long_sub_return(nr_pages, &counter->usage);
 propagate_protected_usage(counter, new);

 WARN_ON_ONCE(new < 0);
}
