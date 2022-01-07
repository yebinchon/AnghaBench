
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int protocol; } ;
struct net_device {int dummy; } ;
struct neighbour {int ha; int ha_lock; struct net_device* dev; } ;
struct dst_entry {int dummy; } ;
struct dn_route {int rt_local_src; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int ,char*,int ) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int dn_dn2eth (char*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohs (int ) ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;

__attribute__((used)) static int dn_neigh_output(struct neighbour *neigh, struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 struct dn_route *rt = (struct dn_route *)dst;
 struct net_device *dev = neigh->dev;
 char mac_addr[ETH_ALEN];
 unsigned int seq;
 int err;

 dn_dn2eth(mac_addr, rt->rt_local_src);
 do {
  seq = read_seqbegin(&neigh->ha_lock);
  err = dev_hard_header(skb, dev, ntohs(skb->protocol),
          neigh->ha, mac_addr, skb->len);
 } while (read_seqretry(&neigh->ha_lock, seq));

 if (err >= 0)
  err = dev_queue_xmit(skb);
 else {
  kfree_skb(skb);
  err = -EINVAL;
 }
 return err;
}
