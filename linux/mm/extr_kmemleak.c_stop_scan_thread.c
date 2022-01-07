
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kthread_stop (int *) ;
 int * scan_thread ;

__attribute__((used)) static void stop_scan_thread(void)
{
 if (scan_thread) {
  kthread_stop(scan_thread);
  scan_thread = ((void*)0);
 }
}
