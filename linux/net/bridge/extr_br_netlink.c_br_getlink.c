
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct net_bridge_port {int dummy; } ;


 int RTEXT_FILTER_BRVLAN ;
 int RTEXT_FILTER_BRVLAN_COMPRESSED ;
 int RTM_NEWLINK ;
 int br_fill_ifinfo (struct sk_buff*,struct net_bridge_port*,int,int,int ,int,int,struct net_device*) ;
 struct net_bridge_port* br_port_get_rtnl (struct net_device*) ;

int br_getlink(struct sk_buff *skb, u32 pid, u32 seq,
        struct net_device *dev, u32 filter_mask, int nlflags)
{
 struct net_bridge_port *port = br_port_get_rtnl(dev);

 if (!port && !(filter_mask & RTEXT_FILTER_BRVLAN) &&
     !(filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED))
  return 0;

 return br_fill_ifinfo(skb, port, pid, seq, RTM_NEWLINK, nlflags,
         filter_mask, dev);
}
