
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {int soft_iface; } ;


 int batadv_v_ogm_start_queue_timer (struct batadv_hard_iface*) ;
 int batadv_v_ogm_start_timer (struct batadv_priv*) ;
 struct batadv_priv* netdev_priv (int ) ;

int batadv_v_ogm_iface_enable(struct batadv_hard_iface *hard_iface)
{
 struct batadv_priv *bat_priv = netdev_priv(hard_iface->soft_iface);

 batadv_v_ogm_start_queue_timer(hard_iface);
 batadv_v_ogm_start_timer(bat_priv);

 return 0;
}
