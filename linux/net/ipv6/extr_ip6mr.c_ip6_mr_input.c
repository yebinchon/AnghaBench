
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; int mark; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct mr_table {int dummy; } ;
struct mfc6_cache {int dummy; } ;
struct flowi6 {int flowi6_mark; int flowi6_iif; } ;
struct TYPE_4__ {int iif; } ;
struct TYPE_3__ {int daddr; int saddr; } ;


 int ENODEV ;
 TYPE_2__* IPCB (struct sk_buff*) ;
 struct net_device* dev_get_by_index_rcu (struct net*,int ) ;
 struct net* dev_net (struct net_device*) ;
 int ip6_mr_forward (struct net*,struct mr_table*,struct net_device*,struct sk_buff*,struct mfc6_cache*) ;
 struct mfc6_cache* ip6mr_cache_find (struct mr_table*,int *,int *) ;
 struct mfc6_cache* ip6mr_cache_find_any (struct mr_table*,int *,int) ;
 int ip6mr_cache_unresolved (struct mr_table*,int,struct sk_buff*,struct net_device*) ;
 int ip6mr_fib_lookup (struct net*,struct flowi6*,struct mr_table**) ;
 int ip6mr_find_vif (struct mr_table*,struct net_device*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int mrt_lock ;
 scalar_t__ netif_is_l3_master (struct net_device*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

int ip6_mr_input(struct sk_buff *skb)
{
 struct mfc6_cache *cache;
 struct net *net = dev_net(skb->dev);
 struct mr_table *mrt;
 struct flowi6 fl6 = {
  .flowi6_iif = skb->dev->ifindex,
  .flowi6_mark = skb->mark,
 };
 int err;
 struct net_device *dev;




 dev = skb->dev;
 if (netif_is_l3_master(skb->dev)) {
  dev = dev_get_by_index_rcu(net, IPCB(skb)->iif);
  if (!dev) {
   kfree_skb(skb);
   return -ENODEV;
  }
 }

 err = ip6mr_fib_lookup(net, &fl6, &mrt);
 if (err < 0) {
  kfree_skb(skb);
  return err;
 }

 read_lock(&mrt_lock);
 cache = ip6mr_cache_find(mrt,
     &ipv6_hdr(skb)->saddr, &ipv6_hdr(skb)->daddr);
 if (!cache) {
  int vif = ip6mr_find_vif(mrt, dev);

  if (vif >= 0)
   cache = ip6mr_cache_find_any(mrt,
           &ipv6_hdr(skb)->daddr,
           vif);
 }




 if (!cache) {
  int vif;

  vif = ip6mr_find_vif(mrt, dev);
  if (vif >= 0) {
   int err = ip6mr_cache_unresolved(mrt, vif, skb, dev);
   read_unlock(&mrt_lock);

   return err;
  }
  read_unlock(&mrt_lock);
  kfree_skb(skb);
  return -ENODEV;
 }

 ip6_mr_forward(net, mrt, dev, skb, cache);

 read_unlock(&mrt_lock);

 return 0;
}
