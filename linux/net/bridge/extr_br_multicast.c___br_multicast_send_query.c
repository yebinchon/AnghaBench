
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dev; } ;
struct net_bridge_port {int dev; } ;
struct net_bridge {int dummy; } ;
struct br_ip {int dummy; } ;


 int BR_MCAST_DIR_RX ;
 int BR_MCAST_DIR_TX ;
 int NFPROTO_BRIDGE ;
 int NF_BR_LOCAL_OUT ;
 int NF_HOOK (int ,int ,int ,int *,struct sk_buff*,int *,int ,int ) ;
 int br_dev_queue_push_xmit ;
 struct sk_buff* br_multicast_alloc_query (struct net_bridge*,struct br_ip*,int *) ;
 int br_multicast_count (struct net_bridge*,struct net_bridge_port*,struct sk_buff*,int ,int ) ;
 int br_multicast_select_own_querier (struct net_bridge*,struct br_ip*,struct sk_buff*) ;
 int dev_net (int ) ;
 int netif_rx (struct sk_buff*) ;

__attribute__((used)) static void __br_multicast_send_query(struct net_bridge *br,
          struct net_bridge_port *port,
          struct br_ip *ip)
{
 struct sk_buff *skb;
 u8 igmp_type;

 skb = br_multicast_alloc_query(br, ip, &igmp_type);
 if (!skb)
  return;

 if (port) {
  skb->dev = port->dev;
  br_multicast_count(br, port, skb, igmp_type,
       BR_MCAST_DIR_TX);
  NF_HOOK(NFPROTO_BRIDGE, NF_BR_LOCAL_OUT,
   dev_net(port->dev), ((void*)0), skb, ((void*)0), skb->dev,
   br_dev_queue_push_xmit);
 } else {
  br_multicast_select_own_querier(br, ip, skb);
  br_multicast_count(br, port, skb, igmp_type,
       BR_MCAST_DIR_RX);
  netif_rx(skb);
 }
}
