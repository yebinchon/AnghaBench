
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct perf_read_values {int counters; scalar_t__* counterrawid; int counters_max; int * countername; } ;


 int perf_read_values__enlarge_counters (struct perf_read_values*) ;
 int strdup (char const*) ;

__attribute__((used)) static int perf_read_values__findnew_counter(struct perf_read_values *values,
          u64 rawid, const char *name)
{
 int i;

 for (i = 0; i < values->counters; i++)
  if (values->counterrawid[i] == rawid)
   return i;

 if (values->counters == values->counters_max) {
  i = perf_read_values__enlarge_counters(values);
  if (i)
   return i;
 }

 i = values->counters++;
 values->counterrawid[i] = rawid;
 values->countername[i] = strdup(name);

 return i;
}
