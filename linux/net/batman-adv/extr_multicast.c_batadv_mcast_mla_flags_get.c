
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct batadv_priv {struct net_device* soft_iface; } ;
struct batadv_mcast_querier_state {void* shadowing; void* exists; } ;
struct batadv_mcast_mla_flags {int enabled; int bridged; int tvlv_flags; struct batadv_mcast_querier_state querier_ipv6; struct batadv_mcast_querier_state querier_ipv4; } ;
typedef int mla_flags ;


 int BATADV_MCAST_WANT_ALL_IPV4 ;
 int BATADV_MCAST_WANT_ALL_IPV6 ;
 int BATADV_MCAST_WANT_ALL_UNSNOOPABLES ;
 int BATADV_MCAST_WANT_NO_RTR4 ;
 int BATADV_MCAST_WANT_NO_RTR6 ;
 int CONFIG_BRIDGE_IGMP_SNOOPING ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int IS_ENABLED (int ) ;
 struct net_device* batadv_mcast_get_bridge (struct net_device*) ;
 int batadv_mcast_mla_rtr_flags_get (struct batadv_priv*,struct net_device*) ;
 void* br_multicast_has_querier_adjacent (struct net_device*,int ) ;
 void* br_multicast_has_querier_anywhere (struct net_device*,int ) ;
 int dev_put (struct net_device*) ;
 int memset (struct batadv_mcast_mla_flags*,int ,int) ;
 int pr_warn_once (char*) ;

__attribute__((used)) static struct batadv_mcast_mla_flags
batadv_mcast_mla_flags_get(struct batadv_priv *bat_priv)
{
 struct net_device *dev = bat_priv->soft_iface;
 struct batadv_mcast_querier_state *qr4, *qr6;
 struct batadv_mcast_mla_flags mla_flags;
 struct net_device *bridge;

 bridge = batadv_mcast_get_bridge(dev);

 memset(&mla_flags, 0, sizeof(mla_flags));
 mla_flags.enabled = 1;
 mla_flags.tvlv_flags |= batadv_mcast_mla_rtr_flags_get(bat_priv,
              bridge);

 if (!bridge)
  return mla_flags;

 dev_put(bridge);

 mla_flags.bridged = 1;
 qr4 = &mla_flags.querier_ipv4;
 qr6 = &mla_flags.querier_ipv6;

 if (!IS_ENABLED(CONFIG_BRIDGE_IGMP_SNOOPING))
  pr_warn_once("No bridge IGMP snooping compiled - multicast optimizations disabled\n");

 qr4->exists = br_multicast_has_querier_anywhere(dev, ETH_P_IP);
 qr4->shadowing = br_multicast_has_querier_adjacent(dev, ETH_P_IP);

 qr6->exists = br_multicast_has_querier_anywhere(dev, ETH_P_IPV6);
 qr6->shadowing = br_multicast_has_querier_adjacent(dev, ETH_P_IPV6);

 mla_flags.tvlv_flags |= BATADV_MCAST_WANT_ALL_UNSNOOPABLES;
 if (!qr4->exists || qr4->shadowing) {
  mla_flags.tvlv_flags |= BATADV_MCAST_WANT_ALL_IPV4;
  mla_flags.tvlv_flags &= ~BATADV_MCAST_WANT_NO_RTR4;
 }

 if (!qr6->exists || qr6->shadowing) {
  mla_flags.tvlv_flags |= BATADV_MCAST_WANT_ALL_IPV6;
  mla_flags.tvlv_flags &= ~BATADV_MCAST_WANT_NO_RTR6;
 }

 return mla_flags;
}
