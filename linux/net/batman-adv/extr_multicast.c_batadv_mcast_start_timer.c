
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct batadv_priv {TYPE_1__ mcast; } ;


 int BATADV_MCAST_WORK_PERIOD ;
 int batadv_event_workqueue ;
 int msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void batadv_mcast_start_timer(struct batadv_priv *bat_priv)
{
 queue_delayed_work(batadv_event_workqueue, &bat_priv->mcast.work,
      msecs_to_jiffies(BATADV_MCAST_WORK_PERIOD));
}
