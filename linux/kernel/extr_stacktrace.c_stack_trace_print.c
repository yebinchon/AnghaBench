
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WARN_ON (int) ;
 int printk (char*,int,char,void*) ;

void stack_trace_print(const unsigned long *entries, unsigned int nr_entries,
         int spaces)
{
 unsigned int i;

 if (WARN_ON(!entries))
  return;

 for (i = 0; i < nr_entries; i++)
  printk("%*c%pS\n", 1 + spaces, ' ', (void *)entries[i]);
}
