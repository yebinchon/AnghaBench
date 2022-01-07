
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanup_work ;
 scalar_t__ cmpxchg (int *,int ,int) ;
 scalar_t__ kmemleak_enabled ;
 int kmemleak_error ;
 scalar_t__ kmemleak_free_enabled ;
 scalar_t__ kmemleak_initialized ;
 int pr_info (char*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void kmemleak_disable(void)
{

 if (cmpxchg(&kmemleak_error, 0, 1))
  return;


 kmemleak_enabled = 0;


 if (kmemleak_initialized)
  schedule_work(&cleanup_work);
 else
  kmemleak_free_enabled = 0;

 pr_info("Kernel memory leak detector disabled\n");
}
