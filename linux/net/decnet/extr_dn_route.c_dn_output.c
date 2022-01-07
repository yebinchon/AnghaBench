
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct dst_entry {struct net_device* dev; } ;
struct dn_skb_cb {scalar_t__ hops; int rt_flags; int dst; int src; } ;
struct dn_route {int rt_daddr; int rt_saddr; int * n; } ;


 int DN_RT_F_IE ;
 int DN_RT_F_RQR ;
 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int EINVAL ;
 int NFPROTO_DECNET ;
 int NF_DN_LOCAL_OUT ;
 int NF_HOOK (int ,int ,int *,struct sock*,struct sk_buff*,int *,struct net_device*,int ) ;
 int dn_to_neigh_output ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int net_dbg_ratelimited (char*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;

__attribute__((used)) static int dn_output(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 struct dn_route *rt = (struct dn_route *)dst;
 struct net_device *dev = dst->dev;
 struct dn_skb_cb *cb = DN_SKB_CB(skb);

 int err = -EINVAL;

 if (rt->n == ((void*)0))
  goto error;

 skb->dev = dev;

 cb->src = rt->rt_saddr;
 cb->dst = rt->rt_daddr;






 cb->rt_flags &= ~DN_RT_F_RQR;
 cb->rt_flags |= DN_RT_F_IE;
 cb->hops = 0;

 return NF_HOOK(NFPROTO_DECNET, NF_DN_LOCAL_OUT,
         &init_net, sk, skb, ((void*)0), dev,
         dn_to_neigh_output);

error:
 net_dbg_ratelimited("dn_output: This should not happen\n");

 kfree_skb(skb);

 return err;
}
