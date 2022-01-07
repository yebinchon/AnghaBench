
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aggr_wq; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;


 int BATADV_MAX_AGGREGATION_MS ;
 int batadv_event_workqueue ;
 int msecs_to_jiffies (unsigned int) ;
 unsigned int prandom_u32 () ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void batadv_v_ogm_start_queue_timer(struct batadv_hard_iface *hard_iface)
{
 unsigned int msecs = BATADV_MAX_AGGREGATION_MS * 1000;


 msecs += prandom_u32() % (msecs / 5) - (msecs / 10);
 queue_delayed_work(batadv_event_workqueue, &hard_iface->bat_v.aggr_wq,
      msecs_to_jiffies(msecs / 1000));
}
