
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int protocol; } ;
struct net_device {TYPE_1__* header_ops; } ;
struct TYPE_4__ {int hh_len; } ;
struct neighbour {int ha; int ha_lock; TYPE_2__ hh; struct net_device* dev; } ;
struct TYPE_3__ {scalar_t__ cache; } ;


 int EINVAL ;
 int __skb_pull (struct sk_buff*,int ) ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int ,int *,int ) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int neigh_event_send (struct neighbour*,struct sk_buff*) ;
 int neigh_hh_init (struct neighbour*) ;
 int ntohs (int ) ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 int skb_network_offset (struct sk_buff*) ;

int neigh_resolve_output(struct neighbour *neigh, struct sk_buff *skb)
{
 int rc = 0;

 if (!neigh_event_send(neigh, skb)) {
  int err;
  struct net_device *dev = neigh->dev;
  unsigned int seq;

  if (dev->header_ops->cache && !neigh->hh.hh_len)
   neigh_hh_init(neigh);

  do {
   __skb_pull(skb, skb_network_offset(skb));
   seq = read_seqbegin(&neigh->ha_lock);
   err = dev_hard_header(skb, dev, ntohs(skb->protocol),
           neigh->ha, ((void*)0), skb->len);
  } while (read_seqretry(&neigh->ha_lock, seq));

  if (err >= 0)
   rc = dev_queue_xmit(skb);
  else
   goto out_kfree_skb;
 }
out:
 return rc;
out_kfree_skb:
 rc = -EINVAL;
 kfree_skb(skb);
 goto out;
}
