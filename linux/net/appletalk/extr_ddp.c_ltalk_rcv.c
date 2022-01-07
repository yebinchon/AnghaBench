
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct ddpehdr {int deh_dnode; int deh_snode; int deh_len_hops; scalar_t__ deh_sum; int deh_snet; int deh_dnet; } ;
struct atalk_addr {int s_net; } ;
typedef int __be16 ;


 int DDP_MAXHOPS ;
 int GFP_ATOMIC ;
 struct atalk_addr* atalk_find_dev_addr (struct net_device*) ;
 int atalk_rcv (struct sk_buff*,struct net_device*,struct packet_type*,struct net_device*) ;
 int dev_net (struct net_device*) ;
 int htons (int) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int net_eq (int ,int *) ;
 int* skb_mac_header (struct sk_buff*) ;
 struct ddpehdr* skb_push (struct sk_buff*,int) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;

__attribute__((used)) static int ltalk_rcv(struct sk_buff *skb, struct net_device *dev,
       struct packet_type *pt, struct net_device *orig_dev)
{
 if (!net_eq(dev_net(dev), &init_net))
  goto freeit;


 if (skb_mac_header(skb)[2] == 1) {
  struct ddpehdr *ddp;

  struct atalk_addr *ap = atalk_find_dev_addr(dev);

  if (!ap || skb->len < sizeof(__be16) || skb->len > 1023)
   goto freeit;


  if (!(skb = skb_share_check(skb, GFP_ATOMIC)))
   return 0;





  ddp = skb_push(skb, sizeof(*ddp) - 4);
  ddp->deh_dnode = skb_mac_header(skb)[0];
  ddp->deh_snode = skb_mac_header(skb)[1];

  ddp->deh_dnet = ap->s_net;
  ddp->deh_snet = ap->s_net;
  ddp->deh_sum = 0;




  ddp->deh_len_hops = htons(skb->len + (DDP_MAXHOPS << 10));
 }
 skb_reset_transport_header(skb);

 return atalk_rcv(skb, dev, pt, orig_dev);
freeit:
 kfree_skb(skb);
 return 0;
}
