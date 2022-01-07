
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int __kmemleak_do_cleanup () ;
 int kmemleak_found_leaks ;
 scalar_t__ kmemleak_free_enabled ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int scan_mutex ;
 int stop_scan_thread () ;

__attribute__((used)) static void kmemleak_do_cleanup(struct work_struct *work)
{
 stop_scan_thread();

 mutex_lock(&scan_mutex);






 kmemleak_free_enabled = 0;
 mutex_unlock(&scan_mutex);

 if (!kmemleak_found_leaks)
  __kmemleak_do_cleanup();
 else
  pr_info("Kmemleak disabled without freeing internal data. Reclaim the memory with \"echo clear > /sys/kernel/debug/kmemleak\".\n");
}
