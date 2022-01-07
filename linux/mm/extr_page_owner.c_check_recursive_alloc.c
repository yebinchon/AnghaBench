
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool check_recursive_alloc(unsigned long *entries,
      unsigned int nr_entries,
      unsigned long ip)
{
 unsigned int i;

 for (i = 0; i < nr_entries; i++) {
  if (entries[i] == ip)
   return 1;
 }
 return 0;
}
