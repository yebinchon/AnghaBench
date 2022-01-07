
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int pkt_type; scalar_t__ data; struct net_device* dev; } ;
struct net_device {int broadcast; int dev_addr; } ;
struct ethhdr {int h_proto; int h_dest; } ;
typedef int __be16 ;


 int ETH_HLEN ;
 int ETH_P_802_2 ;
 int ETH_P_802_3 ;
 int ETH_P_XDSA ;
 int PACKET_BROADCAST ;
 int PACKET_MULTICAST ;
 int PACKET_OTHERHOST ;
 scalar_t__ dsa_can_decode (struct sk_buff*,struct net_device*) ;
 int eth_proto_is_802_3 (int ) ;
 scalar_t__ ether_addr_equal_64bits (int ,int ) ;
 int htons (int ) ;
 int is_multicast_ether_addr_64bits (int ) ;
 scalar_t__ likely (int ) ;
 int netdev_uses_dsa (struct net_device*) ;
 unsigned short* skb_header_pointer (struct sk_buff*,int ,int,unsigned short*) ;
 int skb_pull_inline (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__be16 eth_type_trans(struct sk_buff *skb, struct net_device *dev)
{
 unsigned short _service_access_point;
 const unsigned short *sap;
 const struct ethhdr *eth;

 skb->dev = dev;
 skb_reset_mac_header(skb);

 eth = (struct ethhdr *)skb->data;
 skb_pull_inline(skb, ETH_HLEN);

 if (unlikely(!ether_addr_equal_64bits(eth->h_dest,
           dev->dev_addr))) {
  if (unlikely(is_multicast_ether_addr_64bits(eth->h_dest))) {
   if (ether_addr_equal_64bits(eth->h_dest, dev->broadcast))
    skb->pkt_type = PACKET_BROADCAST;
   else
    skb->pkt_type = PACKET_MULTICAST;
  } else {
   skb->pkt_type = PACKET_OTHERHOST;
  }
 }
 if (unlikely(netdev_uses_dsa(dev)) && dsa_can_decode(skb, dev))
  return htons(ETH_P_XDSA);

 if (likely(eth_proto_is_802_3(eth->h_proto)))
  return eth->h_proto;







 sap = skb_header_pointer(skb, 0, sizeof(*sap), &_service_access_point);
 if (sap && *sap == 0xFFFF)
  return htons(ETH_P_802_3);




 return htons(ETH_P_802_2);
}
