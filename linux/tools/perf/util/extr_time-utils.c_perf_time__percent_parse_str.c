
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_time_interval {int dummy; } ;


 int memset (struct perf_time_interval*,int ,int) ;
 int one_percent_convert (struct perf_time_interval*,char const*,int ,int ,char*) ;
 int percent_comma_split (struct perf_time_interval*,int,char const*,int ,int ,int ) ;
 int percent_dash_split ;
 int percent_slash_split ;
 char* strchr (char const*,char) ;

int perf_time__percent_parse_str(struct perf_time_interval *ptime_buf, int num,
     const char *ostr, u64 start, u64 end)
{
 char *c;
 memset(ptime_buf, 0, sizeof(*ptime_buf) * num);

 c = strchr(ostr, '/');
 if (c) {
  return percent_comma_split(ptime_buf, num, ostr, start,
        end, percent_slash_split);
 }

 c = strchr(ostr, '-');
 if (c) {
  return percent_comma_split(ptime_buf, num, ostr, start,
        end, percent_dash_split);
 }

 c = strchr(ostr, '%');
 if (c)
  return one_percent_convert(ptime_buf, ostr, start, end, c);

 return -1;
}
