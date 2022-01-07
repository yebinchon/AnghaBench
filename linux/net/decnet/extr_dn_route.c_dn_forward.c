
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ pkt_type; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct dst_entry {TYPE_1__* dev; } ;
struct dn_skb_cb {int hops; int rt_flags; } ;
struct TYPE_4__ {struct net_device* dev; } ;
struct dn_route {int rt_flags; TYPE_2__ dst; } ;
struct dn_dev {scalar_t__ use_long; } ;
struct TYPE_3__ {int dn_ptr; } ;


 int DN_RT_F_IE ;
 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 scalar_t__ LL_RESERVED_SPACE (struct net_device*) ;
 int NET_RX_DROP ;
 int NFPROTO_DECNET ;
 int NF_DN_FORWARD ;
 int NF_HOOK (int ,int ,int *,int *,struct sk_buff*,struct net_device*,struct net_device*,int ) ;
 scalar_t__ PACKET_HOST ;
 int RTCF_DOREDIRECT ;
 int dn_to_neigh_output ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 struct dn_dev* rcu_dereference (int ) ;
 scalar_t__ skb_cow (struct sk_buff*,scalar_t__) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;

__attribute__((used)) static int dn_forward(struct sk_buff *skb)
{
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 struct dst_entry *dst = skb_dst(skb);
 struct dn_dev *dn_db = rcu_dereference(dst->dev->dn_ptr);
 struct dn_route *rt;
 int header_len;
 struct net_device *dev = skb->dev;

 if (skb->pkt_type != PACKET_HOST)
  goto drop;


 rt = (struct dn_route *)skb_dst(skb);
 header_len = dn_db->use_long ? 21 : 6;
 if (skb_cow(skb, LL_RESERVED_SPACE(rt->dst.dev)+header_len))
  goto drop;




 if (++cb->hops > 30)
  goto drop;

 skb->dev = rt->dst.dev;






 cb->rt_flags &= ~DN_RT_F_IE;
 if (rt->rt_flags & RTCF_DOREDIRECT)
  cb->rt_flags |= DN_RT_F_IE;

 return NF_HOOK(NFPROTO_DECNET, NF_DN_FORWARD,
         &init_net, ((void*)0), skb, dev, skb->dev,
         dn_to_neigh_output);

drop:
 kfree_skb(skb);
 return NET_RX_DROP;
}
