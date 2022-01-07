
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 scalar_t__ sysctl__read_int (char*,int*) ;

int perf_event_paranoid(void)
{
 int value;

 if (sysctl__read_int("kernel/perf_event_paranoid", &value))
  return INT_MAX;

 return value;
}
