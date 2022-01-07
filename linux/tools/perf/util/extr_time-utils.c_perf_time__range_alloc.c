
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_time_interval {int dummy; } ;


 struct perf_time_interval* calloc (int,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

struct perf_time_interval *perf_time__range_alloc(const char *ostr, int *size)
{
 const char *p1, *p2;
 int i = 1;
 struct perf_time_interval *ptime;




 if (!ostr)
  goto alloc;

 p1 = ostr;
 while (p1 < ostr + strlen(ostr)) {
  p2 = strchr(p1, ',');
  if (!p2)
   break;

  p1 = p2 + 1;
  i++;
 }

alloc:
 *size = i;
 ptime = calloc(i, sizeof(*ptime));
 return ptime;
}
