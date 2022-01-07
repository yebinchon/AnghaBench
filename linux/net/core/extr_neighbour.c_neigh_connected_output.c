
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int protocol; } ;
struct net_device {int dummy; } ;
struct neighbour {int ha; int ha_lock; struct net_device* dev; } ;


 int EINVAL ;
 int __skb_pull (struct sk_buff*,int ) ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int ,int *,int ) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohs (int ) ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 int skb_network_offset (struct sk_buff*) ;

int neigh_connected_output(struct neighbour *neigh, struct sk_buff *skb)
{
 struct net_device *dev = neigh->dev;
 unsigned int seq;
 int err;

 do {
  __skb_pull(skb, skb_network_offset(skb));
  seq = read_seqbegin(&neigh->ha_lock);
  err = dev_hard_header(skb, dev, ntohs(skb->protocol),
          neigh->ha, ((void*)0), skb->len);
 } while (read_seqretry(&neigh->ha_lock, seq));

 if (err >= 0)
  err = dev_queue_xmit(skb);
 else {
  err = -EINVAL;
  kfree_skb(skb);
 }
 return err;
}
