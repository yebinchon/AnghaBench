
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * hwlat_kthread ;
 int kthread_stop (int *) ;

__attribute__((used)) static void stop_kthread(void)
{
 if (!hwlat_kthread)
  return;
 kthread_stop(hwlat_kthread);
 hwlat_kthread = ((void*)0);
}
