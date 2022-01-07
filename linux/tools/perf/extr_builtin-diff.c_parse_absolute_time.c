
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct data__file {int session; } ;
struct TYPE_2__ {int range_num; int range_size; int ptime_range; } ;


 int EINVAL ;
 TYPE_1__ pdiff ;
 int perf_time__parse_for_ranges (char*,int ,int *,int *,int *) ;
 int pr_err (char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int parse_absolute_time(struct data__file *d, char **pstr)
{
 char *p = *pstr;
 int ret;





 p = strchr(*pstr, ':');
 if (p) {
  if (p == *pstr) {
   pr_err("Invalid time string\n");
   return -EINVAL;
  }

  *p = 0;
  p++;
  if (*p == 0) {
   pr_err("Invalid time string\n");
   return -EINVAL;
  }
 }

 ret = perf_time__parse_for_ranges(*pstr, d->session,
       &pdiff.ptime_range,
       &pdiff.range_size,
       &pdiff.range_num);
 if (ret < 0)
  return ret;

 if (!p || *p == 0)
  *pstr = ((void*)0);
 else
  *pstr = p;

 return ret;
}
