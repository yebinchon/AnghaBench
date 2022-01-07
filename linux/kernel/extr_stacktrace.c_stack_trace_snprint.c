
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WARN_ON (int) ;
 unsigned int snprintf (char*,size_t,char*,int,char,void*) ;

int stack_trace_snprint(char *buf, size_t size, const unsigned long *entries,
   unsigned int nr_entries, int spaces)
{
 unsigned int generated, i, total = 0;

 if (WARN_ON(!entries))
  return 0;

 for (i = 0; i < nr_entries && size; i++) {
  generated = snprintf(buf, size, "%*c%pS\n", 1 + spaces, ' ',
         (void *)entries[i]);

  total += generated;
  if (generated >= size) {
   buf += size;
   size = 0;
  } else {
   buf += generated;
   size -= generated;
  }
 }

 return total;
}
