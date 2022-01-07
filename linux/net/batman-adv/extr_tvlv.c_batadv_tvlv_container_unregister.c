
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct batadv_tvlv_container {int dummy; } ;
struct TYPE_2__ {int container_list_lock; } ;
struct batadv_priv {TYPE_1__ tvlv; } ;


 struct batadv_tvlv_container* batadv_tvlv_container_get (struct batadv_priv*,int ,int ) ;
 int batadv_tvlv_container_remove (struct batadv_priv*,struct batadv_tvlv_container*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void batadv_tvlv_container_unregister(struct batadv_priv *bat_priv,
          u8 type, u8 version)
{
 struct batadv_tvlv_container *tvlv;

 spin_lock_bh(&bat_priv->tvlv.container_list_lock);
 tvlv = batadv_tvlv_container_get(bat_priv, type, version);
 batadv_tvlv_container_remove(bat_priv, tvlv);
 spin_unlock_bh(&bat_priv->tvlv.container_list_lock);
}
