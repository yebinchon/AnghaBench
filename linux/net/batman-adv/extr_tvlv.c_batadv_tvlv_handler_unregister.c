
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct batadv_tvlv_handler {int list; } ;
struct TYPE_2__ {int handler_list_lock; } ;
struct batadv_priv {TYPE_1__ tvlv; } ;


 struct batadv_tvlv_handler* batadv_tvlv_handler_get (struct batadv_priv*,int ,int ) ;
 int batadv_tvlv_handler_put (struct batadv_tvlv_handler*) ;
 int hlist_del_rcu (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void batadv_tvlv_handler_unregister(struct batadv_priv *bat_priv,
        u8 type, u8 version)
{
 struct batadv_tvlv_handler *tvlv_handler;

 tvlv_handler = batadv_tvlv_handler_get(bat_priv, type, version);
 if (!tvlv_handler)
  return;

 batadv_tvlv_handler_put(tvlv_handler);
 spin_lock_bh(&bat_priv->tvlv.handler_list_lock);
 hlist_del_rcu(&tvlv_handler->list);
 spin_unlock_bh(&bat_priv->tvlv.handler_list_lock);
 batadv_tvlv_handler_put(tvlv_handler);
}
