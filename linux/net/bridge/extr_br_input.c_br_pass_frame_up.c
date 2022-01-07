
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; scalar_t__ len; } ;
struct pcpu_sw_netstats {int syncp; int rx_bytes; int rx_packets; } ;
struct net_device {int flags; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge {int stats; } ;
struct TYPE_2__ {struct net_device* brdev; } ;


 TYPE_1__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 int BR_MCAST_DIR_TX ;
 int IFF_PROMISC ;
 int NET_RX_DROP ;
 int NFPROTO_BRIDGE ;
 int NF_BR_LOCAL_IN ;
 int NF_HOOK (int ,int ,int ,int *,struct sk_buff*,struct net_device*,int *,int ) ;
 int br_allowed_egress (struct net_bridge_vlan_group*,struct sk_buff*) ;
 struct sk_buff* br_handle_vlan (struct net_bridge*,int *,struct net_bridge_vlan_group*,struct sk_buff*) ;
 int br_multicast_count (struct net_bridge*,int *,struct sk_buff*,int ,int ) ;
 int br_multicast_igmp_type (struct sk_buff*) ;
 int br_netif_receive_skb ;
 struct net_bridge_vlan_group* br_vlan_group_rcu (struct net_bridge*) ;
 int dev_net (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 struct net_bridge* netdev_priv (struct net_device*) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static int br_pass_frame_up(struct sk_buff *skb)
{
 struct net_device *indev, *brdev = BR_INPUT_SKB_CB(skb)->brdev;
 struct net_bridge *br = netdev_priv(brdev);
 struct net_bridge_vlan_group *vg;
 struct pcpu_sw_netstats *brstats = this_cpu_ptr(br->stats);

 u64_stats_update_begin(&brstats->syncp);
 brstats->rx_packets++;
 brstats->rx_bytes += skb->len;
 u64_stats_update_end(&brstats->syncp);

 vg = br_vlan_group_rcu(br);




 if (!(brdev->flags & IFF_PROMISC) &&
     !br_allowed_egress(vg, skb)) {
  kfree_skb(skb);
  return NET_RX_DROP;
 }

 indev = skb->dev;
 skb->dev = brdev;
 skb = br_handle_vlan(br, ((void*)0), vg, skb);
 if (!skb)
  return NET_RX_DROP;

 br_multicast_count(br, ((void*)0), skb, br_multicast_igmp_type(skb),
      BR_MCAST_DIR_TX);

 return NF_HOOK(NFPROTO_BRIDGE, NF_BR_LOCAL_IN,
         dev_net(indev), ((void*)0), skb, indev, ((void*)0),
         br_netif_receive_skb);
}
