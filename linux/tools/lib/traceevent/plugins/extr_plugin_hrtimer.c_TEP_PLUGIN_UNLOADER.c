
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int tep_unregister_event_handler (struct tep_handle*,int,char*,char*,int ,int *) ;
 int timer_expire_handler ;
 int timer_start_handler ;

void TEP_PLUGIN_UNLOADER(struct tep_handle *tep)
{
 tep_unregister_event_handler(tep, -1,
         "timer", "hrtimer_expire_entry",
         timer_expire_handler, ((void*)0));

 tep_unregister_event_handler(tep, -1, "timer", "hrtimer_start",
         timer_start_handler, ((void*)0));
}
