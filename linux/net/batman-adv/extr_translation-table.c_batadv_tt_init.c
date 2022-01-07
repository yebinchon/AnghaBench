
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct batadv_priv {TYPE_1__ tt; } ;


 int BATADV_NO_FLAGS ;
 int BATADV_TT_REMOTE_MASK ;
 int BATADV_TT_SYNC_MASK ;
 int BATADV_TT_WORK_PERIOD ;
 int BATADV_TVLV_ROAM ;
 int BATADV_TVLV_TT ;
 int BUILD_BUG_ON (int) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int batadv_event_workqueue ;
 int batadv_roam_tvlv_unicast_handler_v1 ;
 int batadv_tt_global_init (struct batadv_priv*) ;
 int batadv_tt_local_init (struct batadv_priv*) ;
 int batadv_tt_purge ;
 int * batadv_tt_tvlv_ogm_handler_v1 ;
 int batadv_tt_tvlv_unicast_handler_v1 ;
 int batadv_tvlv_handler_register (struct batadv_priv*,int *,int ,int ,int,int ) ;
 int msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,int ) ;

int batadv_tt_init(struct batadv_priv *bat_priv)
{
 int ret;


 BUILD_BUG_ON(!(BATADV_TT_SYNC_MASK & BATADV_TT_REMOTE_MASK));

 ret = batadv_tt_local_init(bat_priv);
 if (ret < 0)
  return ret;

 ret = batadv_tt_global_init(bat_priv);
 if (ret < 0)
  return ret;

 batadv_tvlv_handler_register(bat_priv, batadv_tt_tvlv_ogm_handler_v1,
         batadv_tt_tvlv_unicast_handler_v1,
         BATADV_TVLV_TT, 1, BATADV_NO_FLAGS);

 batadv_tvlv_handler_register(bat_priv, ((void*)0),
         batadv_roam_tvlv_unicast_handler_v1,
         BATADV_TVLV_ROAM, 1, BATADV_NO_FLAGS);

 INIT_DELAYED_WORK(&bat_priv->tt.work, batadv_tt_purge);
 queue_delayed_work(batadv_event_workqueue, &bat_priv->tt.work,
      msecs_to_jiffies(BATADV_TT_WORK_PERIOD));

 return 1;
}
