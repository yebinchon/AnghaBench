
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_guest_info_callbacks {int dummy; } ;


 int * perf_guest_cbs ;

int perf_unregister_guest_info_callbacks(struct perf_guest_info_callbacks *cbs)
{
 perf_guest_cbs = ((void*)0);
 return 0;
}
