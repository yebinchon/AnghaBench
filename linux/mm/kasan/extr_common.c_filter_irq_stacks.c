
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ in_irqentry_text (unsigned long) ;

__attribute__((used)) static inline unsigned int filter_irq_stacks(unsigned long *entries,
          unsigned int nr_entries)
{
 unsigned int i;

 for (i = 0; i < nr_entries; i++) {
  if (in_irqentry_text(entries[i])) {

   return i + 1;
  }
 }
 return nr_entries;
}
