
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int *) ;
 int kmemleak_scan_thread ;
 int * kthread_run (int ,int *,char*) ;
 int pr_warn (char*) ;
 int * scan_thread ;

__attribute__((used)) static void start_scan_thread(void)
{
 if (scan_thread)
  return;
 scan_thread = kthread_run(kmemleak_scan_thread, ((void*)0), "kmemleak");
 if (IS_ERR(scan_thread)) {
  pr_warn("Failed to create the scan thread\n");
  scan_thread = ((void*)0);
 }
}
