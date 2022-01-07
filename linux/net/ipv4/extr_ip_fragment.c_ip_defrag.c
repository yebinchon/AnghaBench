
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int lock; } ;
struct ipq {TYPE_1__ q; } ;
struct TYPE_4__ {struct net_device* dev; } ;


 int ENOMEM ;
 int IPSTATS_MIB_REASMFAILS ;
 int IPSTATS_MIB_REASMREQDS ;
 int __IP_INC_STATS (struct net*,int ) ;
 struct ipq* ip_find (struct net*,int ,int ,int) ;
 int ip_frag_queue (struct ipq*,struct sk_buff*) ;
 int ip_hdr (struct sk_buff*) ;
 int ipq_put (struct ipq*) ;
 int kfree_skb (struct sk_buff*) ;
 int l3mdev_master_ifindex_rcu (struct net_device*) ;
 TYPE_2__* skb_dst (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ip_defrag(struct net *net, struct sk_buff *skb, u32 user)
{
 struct net_device *dev = skb->dev ? : skb_dst(skb)->dev;
 int vif = l3mdev_master_ifindex_rcu(dev);
 struct ipq *qp;

 __IP_INC_STATS(net, IPSTATS_MIB_REASMREQDS);
 skb_orphan(skb);


 qp = ip_find(net, ip_hdr(skb), user, vif);
 if (qp) {
  int ret;

  spin_lock(&qp->q.lock);

  ret = ip_frag_queue(qp, skb);

  spin_unlock(&qp->q.lock);
  ipq_put(qp);
  return ret;
 }

 __IP_INC_STATS(net, IPSTATS_MIB_REASMFAILS);
 kfree_skb(skb);
 return -ENOMEM;
}
