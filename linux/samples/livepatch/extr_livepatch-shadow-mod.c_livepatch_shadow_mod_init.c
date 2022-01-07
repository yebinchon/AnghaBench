
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALLOC_PERIOD ;
 int CLEANUP_PERIOD ;
 int alloc_dwork ;
 int cleanup_dwork ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int livepatch_shadow_mod_init(void)
{
 schedule_delayed_work(&alloc_dwork,
  msecs_to_jiffies(1000 * ALLOC_PERIOD));
 schedule_delayed_work(&cleanup_dwork,
  msecs_to_jiffies(1000 * CLEANUP_PERIOD));

 return 0;
}
