
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ogm_wq; } ;
struct batadv_priv {TYPE_1__ bat_v; int orig_interval; } ;


 int BATADV_JITTER ;
 unsigned long atomic_read (int *) ;
 int batadv_event_workqueue ;
 scalar_t__ delayed_work_pending (int *) ;
 int msecs_to_jiffies (unsigned long) ;
 int prandom_u32 () ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void batadv_v_ogm_start_timer(struct batadv_priv *bat_priv)
{
 unsigned long msecs;



 if (delayed_work_pending(&bat_priv->bat_v.ogm_wq))
  return;

 msecs = atomic_read(&bat_priv->orig_interval) - BATADV_JITTER;
 msecs += prandom_u32() % (2 * BATADV_JITTER);
 queue_delayed_work(batadv_event_workqueue, &bat_priv->bat_v.ogm_wq,
      msecs_to_jiffies(msecs));
}
