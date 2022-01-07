
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_aggr_thread_value {int val; } ;



__attribute__((used)) static int cmp_val(const void *a, const void *b)
{
 return ((struct perf_aggr_thread_value *)b)->val -
  ((struct perf_aggr_thread_value *)a)->val;
}
