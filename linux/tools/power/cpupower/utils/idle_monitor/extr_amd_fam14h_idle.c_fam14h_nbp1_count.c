
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NBP1 ;
 scalar_t__ nbp1_entered ;

__attribute__((used)) static int fam14h_nbp1_count(unsigned int id, unsigned long long *count,
        unsigned int cpu)
{
 if (id == NBP1) {
  if (nbp1_entered)
   *count = 1;
  else
   *count = 0;
  return 0;
 }
 return -1;
}
