
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {TYPE_4__* dev; } ;
struct TYPE_8__ {TYPE_4__* dev; } ;
struct rtable {int rt_flags; TYPE_2__ dst; } ;
struct iphdr {int tos; int saddr; int daddr; } ;
struct inet6_skb_parm {int dummy; } ;
struct flowi4 {int dummy; } ;
typedef scalar_t__ __u32 ;
typedef int __be32 ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_9__ {TYPE_1__* dev; } ;
struct TYPE_7__ {scalar_t__ type; } ;


 scalar_t__ ARPHRD_TUNNEL6 ;
 int GFP_ATOMIC ;
 int ICMPV6_ADDR_UNREACH ;


 int ICMP_DEST_UNREACH ;
 int ICMP_FRAG_NEEDED ;
 int ICMP_HOST_UNREACH ;
 int IPPROTO_IPIP ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int RTCF_LOCAL ;
 int RT_TOS (int ) ;
 int dev_net (TYPE_4__*) ;
 scalar_t__ dst_mtu (TYPE_3__*) ;
 int htonl (scalar_t__) ;
 int icmp_send (struct sk_buff*,int,int,int ) ;
 int ip6_tnl_err (struct sk_buff*,int ,struct inet6_skb_parm*,int*,int*,int*,scalar_t__*,int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_route_input (struct sk_buff*,int ,int ,int ,TYPE_4__*) ;
 struct rtable* ip_route_output_ports (int ,struct flowi4*,int *,int ,int ,int ,int ,int ,int ,int ) ;
 int ip_rt_put (struct rtable*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ ntohl (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 TYPE_3__* skb_dst (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,TYPE_2__*) ;
 int skb_dst_update_pmtu (struct sk_buff*,scalar_t__) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static int
ip4ip6_err(struct sk_buff *skb, struct inet6_skb_parm *opt,
    u8 type, u8 code, int offset, __be32 info)
{
 __u32 rel_info = ntohl(info);
 const struct iphdr *eiph;
 struct sk_buff *skb2;
 int err, rel_msg = 0;
 u8 rel_type = type;
 u8 rel_code = code;
 struct rtable *rt;
 struct flowi4 fl4;

 err = ip6_tnl_err(skb, IPPROTO_IPIP, opt, &rel_type, &rel_code,
     &rel_msg, &rel_info, offset);
 if (err < 0)
  return err;

 if (rel_msg == 0)
  return 0;

 switch (rel_type) {
 case 129:
  if (rel_code != ICMPV6_ADDR_UNREACH)
   return 0;
  rel_type = ICMP_DEST_UNREACH;
  rel_code = ICMP_HOST_UNREACH;
  break;
 case 128:
  if (rel_code != 0)
   return 0;
  rel_type = ICMP_DEST_UNREACH;
  rel_code = ICMP_FRAG_NEEDED;
  break;
 default:
  return 0;
 }

 if (!pskb_may_pull(skb, offset + sizeof(struct iphdr)))
  return 0;

 skb2 = skb_clone(skb, GFP_ATOMIC);
 if (!skb2)
  return 0;

 skb_dst_drop(skb2);

 skb_pull(skb2, offset);
 skb_reset_network_header(skb2);
 eiph = ip_hdr(skb2);


 rt = ip_route_output_ports(dev_net(skb->dev), &fl4, ((void*)0), eiph->saddr,
       0, 0, 0, IPPROTO_IPIP, RT_TOS(eiph->tos), 0);
 if (IS_ERR(rt))
  goto out;

 skb2->dev = rt->dst.dev;
 ip_rt_put(rt);


 if (rt->rt_flags & RTCF_LOCAL) {
  rt = ip_route_output_ports(dev_net(skb->dev), &fl4, ((void*)0),
        eiph->daddr, eiph->saddr, 0, 0,
        IPPROTO_IPIP, RT_TOS(eiph->tos), 0);
  if (IS_ERR(rt) || rt->dst.dev->type != ARPHRD_TUNNEL6) {
   if (!IS_ERR(rt))
    ip_rt_put(rt);
   goto out;
  }
  skb_dst_set(skb2, &rt->dst);
 } else {
  if (ip_route_input(skb2, eiph->daddr, eiph->saddr, eiph->tos,
       skb2->dev) ||
      skb_dst(skb2)->dev->type != ARPHRD_TUNNEL6)
   goto out;
 }


 if (rel_type == ICMP_DEST_UNREACH && rel_code == ICMP_FRAG_NEEDED) {
  if (rel_info > dst_mtu(skb_dst(skb2)))
   goto out;

  skb_dst_update_pmtu(skb2, rel_info);
 }

 icmp_send(skb2, rel_type, rel_code, htonl(rel_info));

out:
 kfree_skb(skb2);
 return 0;
}
