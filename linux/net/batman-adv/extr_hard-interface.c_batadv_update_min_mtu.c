
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int batadv_hardif_min_mtu (struct net_device*) ;
 int batadv_tt_local_resize_to_mtu (struct net_device*) ;

void batadv_update_min_mtu(struct net_device *soft_iface)
{
 soft_iface->mtu = batadv_hardif_min_mtu(soft_iface);




 batadv_tt_local_resize_to_mtu(soft_iface);
}
