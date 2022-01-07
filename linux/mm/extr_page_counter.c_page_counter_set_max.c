
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_counter {unsigned long max; int usage; } ;


 int EBUSY ;
 long atomic_long_read (int *) ;
 int cond_resched () ;
 unsigned long xchg (unsigned long*,unsigned long) ;

int page_counter_set_max(struct page_counter *counter, unsigned long nr_pages)
{
 for (;;) {
  unsigned long old;
  long usage;
  usage = atomic_long_read(&counter->usage);

  if (usage > nr_pages)
   return -EBUSY;

  old = xchg(&counter->max, nr_pages);

  if (atomic_long_read(&counter->usage) <= usage)
   return 0;

  counter->max = old;
  cond_resched();
 }
}
