
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ dev; } ;
struct TYPE_3__ {scalar_t__ dev; } ;
struct rt6_info {TYPE_1__ dst; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_skb_parm {int dummy; } ;
typedef int __u32 ;
typedef int __be32 ;
struct TYPE_4__ {int saddr; } ;


 int GFP_ATOMIC ;
 int IPPROTO_IPV6 ;
 int dev_net (scalar_t__) ;
 int icmpv6_send (struct sk_buff*,int ,int ,int ) ;
 int ip6_rt_put (struct rt6_info*) ;
 int ip6_tnl_err (struct sk_buff*,int ,struct inet6_skb_parm*,int *,int *,int*,int *,int) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohl (int ) ;
 scalar_t__ pskb_may_pull (struct sk_buff*,int) ;
 struct rt6_info* rt6_lookup (int ,int *,int *,int ,struct sk_buff*,int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static int
ip6ip6_err(struct sk_buff *skb, struct inet6_skb_parm *opt,
    u8 type, u8 code, int offset, __be32 info)
{
 __u32 rel_info = ntohl(info);
 int err, rel_msg = 0;
 u8 rel_type = type;
 u8 rel_code = code;

 err = ip6_tnl_err(skb, IPPROTO_IPV6, opt, &rel_type, &rel_code,
     &rel_msg, &rel_info, offset);
 if (err < 0)
  return err;

 if (rel_msg && pskb_may_pull(skb, offset + sizeof(struct ipv6hdr))) {
  struct rt6_info *rt;
  struct sk_buff *skb2 = skb_clone(skb, GFP_ATOMIC);

  if (!skb2)
   return 0;

  skb_dst_drop(skb2);
  skb_pull(skb2, offset);
  skb_reset_network_header(skb2);


  rt = rt6_lookup(dev_net(skb->dev), &ipv6_hdr(skb2)->saddr,
    ((void*)0), 0, skb2, 0);

  if (rt && rt->dst.dev)
   skb2->dev = rt->dst.dev;

  icmpv6_send(skb2, rel_type, rel_code, rel_info);

  ip6_rt_put(rt);

  kfree_skb(skb2);
 }

 return 0;
}
