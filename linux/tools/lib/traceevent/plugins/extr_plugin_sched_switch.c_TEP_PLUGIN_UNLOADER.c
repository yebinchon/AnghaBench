
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int sched_switch_handler ;
 int sched_wakeup_handler ;
 int tep_unregister_event_handler (struct tep_handle*,int,char*,char*,int ,int *) ;

void TEP_PLUGIN_UNLOADER(struct tep_handle *tep)
{
 tep_unregister_event_handler(tep, -1, "sched", "sched_switch",
         sched_switch_handler, ((void*)0));

 tep_unregister_event_handler(tep, -1, "sched", "sched_wakeup",
         sched_wakeup_handler, ((void*)0));

 tep_unregister_event_handler(tep, -1, "sched", "sched_wakeup_new",
         sched_wakeup_handler, ((void*)0));
}
