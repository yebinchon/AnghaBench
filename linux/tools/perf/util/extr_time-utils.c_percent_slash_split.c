
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_time_interval {int dummy; } ;


 scalar_t__ parse_percent (double*,char*) ;
 int set_percent_time (struct perf_time_interval*,double,double,int ,int ) ;
 char* strchr (char*,char) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int percent_slash_split(char *str, struct perf_time_interval *ptime,
          u64 start, u64 end)
{
 char *p, *end_str;
 double pcnt, start_pcnt, end_pcnt;
 int i;







 p = strchr(str, '/');
 if (!p)
  return -1;

 *p = '\0';
 if (parse_percent(&pcnt, str) < 0)
  return -1;

 p++;
 i = (int)strtol(p, &end_str, 10);
 if (*end_str)
  return -1;

 if (pcnt <= 0.0)
  return -1;

 start_pcnt = pcnt * (i - 1);
 end_pcnt = pcnt * i;

 return set_percent_time(ptime, start_pcnt, end_pcnt, start, end);
}
