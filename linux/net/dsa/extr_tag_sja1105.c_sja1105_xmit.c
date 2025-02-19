
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_switch {int dummy; } ;
struct dsa_port {int index; struct dsa_switch* ds; } ;


 int ETH_P_SJA1105 ;
 int VLAN_PRIO_SHIFT ;
 int dsa_8021q_tx_vid (struct dsa_switch*,int ) ;
 struct sk_buff* dsa_8021q_xmit (struct sk_buff*,struct net_device*,int ,int) ;
 struct sk_buff* dsa_defer_xmit (struct sk_buff*,struct net_device*) ;
 scalar_t__ dsa_port_is_vlan_filtering (struct dsa_port*) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int netdev_txq_to_tc (struct net_device*,int) ;
 int sja1105_is_link_local (struct sk_buff*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct sk_buff *sja1105_xmit(struct sk_buff *skb,
        struct net_device *netdev)
{
 struct dsa_port *dp = dsa_slave_to_port(netdev);
 struct dsa_switch *ds = dp->ds;
 u16 tx_vid = dsa_8021q_tx_vid(ds, dp->index);
 u16 queue_mapping = skb_get_queue_mapping(skb);
 u8 pcp = netdev_txq_to_tc(netdev, queue_mapping);





 if (unlikely(sja1105_is_link_local(skb)))
  return dsa_defer_xmit(skb, netdev);






 if (dsa_port_is_vlan_filtering(dp))
  return skb;

 return dsa_8021q_xmit(skb, netdev, ETH_P_SJA1105,
        ((pcp << VLAN_PRIO_SHIFT) | tx_vid));
}
