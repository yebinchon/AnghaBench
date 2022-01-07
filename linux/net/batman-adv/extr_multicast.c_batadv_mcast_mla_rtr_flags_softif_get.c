
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct batadv_priv {struct net_device* soft_iface; } ;


 int BATADV_NO_FLAGS ;
 int batadv_mcast_mla_rtr_flags_softif_get_ipv4 (struct net_device*) ;
 int batadv_mcast_mla_rtr_flags_softif_get_ipv6 (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static u8 batadv_mcast_mla_rtr_flags_softif_get(struct batadv_priv *bat_priv,
      struct net_device *bridge)
{
 struct net_device *dev = bridge ? bridge : bat_priv->soft_iface;
 u8 flags = BATADV_NO_FLAGS;

 rcu_read_lock();

 flags |= batadv_mcast_mla_rtr_flags_softif_get_ipv4(dev);
 flags |= batadv_mcast_mla_rtr_flags_softif_get_ipv6(dev);

 rcu_read_unlock();

 return flags;
}
