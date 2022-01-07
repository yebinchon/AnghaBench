
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct batadv_priv {TYPE_1__ dat; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int batadv_dat_purge ;
 int batadv_event_workqueue ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void batadv_dat_start_timer(struct batadv_priv *bat_priv)
{
 INIT_DELAYED_WORK(&bat_priv->dat.work, batadv_dat_purge);
 queue_delayed_work(batadv_event_workqueue, &bat_priv->dat.work,
      msecs_to_jiffies(10000));
}
