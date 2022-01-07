
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct data__file {int session; } ;
struct TYPE_2__ {int range_num; int range_size; int ptime_range; int time_str; } ;


 TYPE_1__ pdiff ;
 int perf_time__parse_for_ranges (int ,int ,int *,int *,int *) ;

__attribute__((used)) static int parse_percent_time(struct data__file *d)
{
 int ret;

 ret = perf_time__parse_for_ranges(pdiff.time_str, d->session,
       &pdiff.ptime_range,
       &pdiff.range_size,
       &pdiff.range_num);
 return ret;
}
