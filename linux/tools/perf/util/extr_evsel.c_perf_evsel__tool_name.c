
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scnprintf (char*,size_t,char*) ;

__attribute__((used)) static int perf_evsel__tool_name(char *bf, size_t size)
{
 int ret = scnprintf(bf, size, "duration_time");
 return ret;
}
