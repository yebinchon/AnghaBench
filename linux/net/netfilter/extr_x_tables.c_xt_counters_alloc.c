
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_counters {int dummy; } ;


 int INT_MAX ;
 unsigned int XT_MAX_TABLE_SIZE ;
 struct xt_counters* vzalloc (unsigned int) ;

struct xt_counters *xt_counters_alloc(unsigned int counters)
{
 struct xt_counters *mem;

 if (counters == 0 || counters > INT_MAX / sizeof(*mem))
  return ((void*)0);

 counters *= sizeof(*mem);
 if (counters > XT_MAX_TABLE_SIZE)
  return ((void*)0);

 return vzalloc(counters);
}
