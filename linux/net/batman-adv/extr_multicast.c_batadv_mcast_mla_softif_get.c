
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hlist_head {int dummy; } ;
struct batadv_mcast_mla_flags {int dummy; } ;


 struct net_device* batadv_mcast_get_bridge (struct net_device*) ;
 int batadv_mcast_mla_softif_get_ipv4 (struct net_device*,struct hlist_head*,struct batadv_mcast_mla_flags*) ;
 int batadv_mcast_mla_softif_get_ipv6 (struct net_device*,struct hlist_head*,struct batadv_mcast_mla_flags*) ;
 int dev_put (struct net_device*) ;

__attribute__((used)) static int
batadv_mcast_mla_softif_get(struct net_device *dev,
       struct hlist_head *mcast_list,
       struct batadv_mcast_mla_flags *flags)
{
 struct net_device *bridge = batadv_mcast_get_bridge(dev);
 int ret4, ret6 = 0;

 if (bridge)
  dev = bridge;

 ret4 = batadv_mcast_mla_softif_get_ipv4(dev, mcast_list, flags);
 if (ret4 < 0)
  goto out;

 ret6 = batadv_mcast_mla_softif_get_ipv6(dev, mcast_list, flags);
 if (ret6 < 0) {
  ret4 = 0;
  goto out;
 }

out:
 if (bridge)
  dev_put(bridge);

 return ret4 + ret6;
}
