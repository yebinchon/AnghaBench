
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int elp_wq; int elp_interval; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;


 int BATADV_JITTER ;
 unsigned int atomic_read (int *) ;
 int batadv_event_workqueue ;
 int msecs_to_jiffies (unsigned int) ;
 int prandom_u32 () ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void batadv_v_elp_start_timer(struct batadv_hard_iface *hard_iface)
{
 unsigned int msecs;

 msecs = atomic_read(&hard_iface->bat_v.elp_interval) - BATADV_JITTER;
 msecs += prandom_u32() % (2 * BATADV_JITTER);

 queue_delayed_work(batadv_event_workqueue, &hard_iface->bat_v.elp_wq,
      msecs_to_jiffies(msecs));
}
