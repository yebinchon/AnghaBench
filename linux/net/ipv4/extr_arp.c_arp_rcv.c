
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ pkt_type; } ;
struct packet_type {int dummy; } ;
struct net_device {int flags; scalar_t__ addr_len; } ;
struct neighbour_cb {int dummy; } ;
struct arphdr {scalar_t__ ar_hln; int ar_pln; } ;


 int GFP_ATOMIC ;
 int IFF_NOARP ;
 int NEIGH_CB (struct sk_buff*) ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int NFPROTO_ARP ;
 int NF_ARP_IN ;
 int NF_HOOK (int ,int ,int ,int *,struct sk_buff*,struct net_device*,int *,int ) ;
 scalar_t__ PACKET_LOOPBACK ;
 scalar_t__ PACKET_OTHERHOST ;
 struct arphdr* arp_hdr (struct sk_buff*) ;
 int arp_hdr_len (struct net_device*) ;
 int arp_process ;
 int consume_skb (struct sk_buff*) ;
 int dev_net (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (int ,int ,int) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;

__attribute__((used)) static int arp_rcv(struct sk_buff *skb, struct net_device *dev,
     struct packet_type *pt, struct net_device *orig_dev)
{
 const struct arphdr *arp;


 if (dev->flags & IFF_NOARP ||
     skb->pkt_type == PACKET_OTHERHOST ||
     skb->pkt_type == PACKET_LOOPBACK)
  goto consumeskb;

 skb = skb_share_check(skb, GFP_ATOMIC);
 if (!skb)
  goto out_of_mem;


 if (!pskb_may_pull(skb, arp_hdr_len(dev)))
  goto freeskb;

 arp = arp_hdr(skb);
 if (arp->ar_hln != dev->addr_len || arp->ar_pln != 4)
  goto freeskb;

 memset(NEIGH_CB(skb), 0, sizeof(struct neighbour_cb));

 return NF_HOOK(NFPROTO_ARP, NF_ARP_IN,
         dev_net(dev), ((void*)0), skb, dev, ((void*)0),
         arp_process);

consumeskb:
 consume_skb(skb);
 return NET_RX_SUCCESS;
freeskb:
 kfree_skb(skb);
out_of_mem:
 return NET_RX_DROP;
}
