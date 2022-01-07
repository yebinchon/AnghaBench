
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_guest_info_callbacks {int dummy; } ;


 struct perf_guest_info_callbacks* perf_guest_cbs ;

int perf_register_guest_info_callbacks(struct perf_guest_info_callbacks *cbs)
{
 perf_guest_cbs = cbs;
 return 0;
}
