
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sysctl__read_int (char*,int*) ;

__attribute__((used)) static int get_max_rate(unsigned int *rate)
{
 return sysctl__read_int("kernel/perf_event_max_sample_rate", (int *)rate);
}
