
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_time_interval {int end; int start; } ;


 scalar_t__ parse_nsec_time (char*,int *) ;

__attribute__((used)) static int parse_timestr_sec_nsec(struct perf_time_interval *ptime,
      char *start_str, char *end_str)
{
 if (start_str && (*start_str != '\0') &&
     (parse_nsec_time(start_str, &ptime->start) != 0)) {
  return -1;
 }

 if (end_str && (*end_str != '\0') &&
     (parse_nsec_time(end_str, &ptime->end) != 0)) {
  return -1;
 }

 return 0;
}
