
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_pkt {int spkt_protocol; int spkt_device; int spkt_family; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ pkt_type; int protocol; scalar_t__ data; } ;
struct packet_type {struct sock* af_packet_priv; } ;
struct net_device {int name; int type; } ;
struct TYPE_3__ {struct sockaddr_pkt pkt; } ;
struct TYPE_4__ {TYPE_1__ sa; } ;


 int GFP_ATOMIC ;
 scalar_t__ PACKET_LOOPBACK ;
 TYPE_2__* PACKET_SKB_CB (struct sk_buff*) ;
 int dev_net (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int net_eq (int ,int ) ;
 int nf_reset_ct (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 int skb_push (struct sk_buff*,scalar_t__) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 int sock_net (struct sock*) ;
 scalar_t__ sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int packet_rcv_spkt(struct sk_buff *skb, struct net_device *dev,
      struct packet_type *pt, struct net_device *orig_dev)
{
 struct sock *sk;
 struct sockaddr_pkt *spkt;






 sk = pt->af_packet_priv;
 if (skb->pkt_type == PACKET_LOOPBACK)
  goto out;

 if (!net_eq(dev_net(dev), sock_net(sk)))
  goto out;

 skb = skb_share_check(skb, GFP_ATOMIC);
 if (skb == ((void*)0))
  goto oom;


 skb_dst_drop(skb);


 nf_reset_ct(skb);

 spkt = &PACKET_SKB_CB(skb)->sa.pkt;

 skb_push(skb, skb->data - skb_mac_header(skb));





 spkt->spkt_family = dev->type;
 strlcpy(spkt->spkt_device, dev->name, sizeof(spkt->spkt_device));
 spkt->spkt_protocol = skb->protocol;






 if (sock_queue_rcv_skb(sk, skb) == 0)
  return 0;

out:
 kfree_skb(skb);
oom:
 return 0;
}
