
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {unsigned long _skb_refdst; } ;
struct TYPE_10__ {int dev; } ;
struct rtable {TYPE_4__ dst; } ;
struct net {int dummy; } ;
struct iphdr {int saddr; } ;
struct TYPE_7__ {int faddr; scalar_t__ srr; } ;
struct TYPE_8__ {TYPE_1__ opt; } ;
struct TYPE_9__ {TYPE_2__ opt; } ;
struct icmp_bxm {TYPE_3__ replyopts; } ;
struct flowi4 {int fl4_icmp_type; int fl4_icmp_code; int saddr; int daddr; int flowi4_oif; int flowi4_proto; int flowi4_tos; int flowi4_uid; int flowi4_mark; } ;
typedef int __be32 ;
struct TYPE_11__ {int dev; } ;


 int AF_INET ;
 int EPERM ;
 struct rtable* ERR_PTR (int) ;
 int IPPROTO_ICMP ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int PTR_ERR (struct rtable*) ;
 scalar_t__ RTN_LOCAL ;
 int RT_TOS (int ) ;
 int XFRM_LOOKUP_ICMP ;
 struct rtable* __ip_route_output_key (struct net*,struct flowi4*) ;
 int dst_release (TYPE_4__*) ;
 int flowi4_to_flowi (struct flowi4*) ;
 scalar_t__ inet_addr_type_dev_table (struct net*,int ,int ) ;
 int ip_route_input (struct sk_buff*,int ,int ,int ,int ) ;
 struct rtable* ip_route_output_key (struct net*,struct flowi4*) ;
 struct rtable* ip_route_output_key_hash (struct net*,struct flowi4*,struct sk_buff*) ;
 int l3mdev_master_ifindex (int ) ;
 int memcpy (struct flowi4*,struct flowi4*,int) ;
 int memset (struct flowi4*,int ,int) ;
 int security_skb_classify_flow (struct sk_buff*,int ) ;
 TYPE_5__* skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int *) ;
 struct rtable* skb_rtable (struct sk_buff*) ;
 int sock_net_uid (struct net*,int *) ;
 int xfrm_decode_session_reverse (struct sk_buff*,int ,int ) ;
 scalar_t__ xfrm_lookup (struct net*,TYPE_4__*,int ,int *,int ) ;

__attribute__((used)) static struct rtable *icmp_route_lookup(struct net *net,
     struct flowi4 *fl4,
     struct sk_buff *skb_in,
     const struct iphdr *iph,
     __be32 saddr, u8 tos, u32 mark,
     int type, int code,
     struct icmp_bxm *param)
{
 struct rtable *rt, *rt2;
 struct flowi4 fl4_dec;
 int err;

 memset(fl4, 0, sizeof(*fl4));
 fl4->daddr = (param->replyopts.opt.opt.srr ?
        param->replyopts.opt.opt.faddr : iph->saddr);
 fl4->saddr = saddr;
 fl4->flowi4_mark = mark;
 fl4->flowi4_uid = sock_net_uid(net, ((void*)0));
 fl4->flowi4_tos = RT_TOS(tos);
 fl4->flowi4_proto = IPPROTO_ICMP;
 fl4->fl4_icmp_type = type;
 fl4->fl4_icmp_code = code;
 fl4->flowi4_oif = l3mdev_master_ifindex(skb_dst(skb_in)->dev);

 security_skb_classify_flow(skb_in, flowi4_to_flowi(fl4));
 rt = ip_route_output_key_hash(net, fl4, skb_in);
 if (IS_ERR(rt))
  return rt;


 rt2 = rt;

 rt = (struct rtable *) xfrm_lookup(net, &rt->dst,
        flowi4_to_flowi(fl4), ((void*)0), 0);
 if (!IS_ERR(rt)) {
  if (rt != rt2)
   return rt;
 } else if (PTR_ERR(rt) == -EPERM) {
  rt = ((void*)0);
 } else
  return rt;

 err = xfrm_decode_session_reverse(skb_in, flowi4_to_flowi(&fl4_dec), AF_INET);
 if (err)
  goto relookup_failed;

 if (inet_addr_type_dev_table(net, skb_dst(skb_in)->dev,
         fl4_dec.saddr) == RTN_LOCAL) {
  rt2 = __ip_route_output_key(net, &fl4_dec);
  if (IS_ERR(rt2))
   err = PTR_ERR(rt2);
 } else {
  struct flowi4 fl4_2 = {};
  unsigned long orefdst;

  fl4_2.daddr = fl4_dec.saddr;
  rt2 = ip_route_output_key(net, &fl4_2);
  if (IS_ERR(rt2)) {
   err = PTR_ERR(rt2);
   goto relookup_failed;
  }

  orefdst = skb_in->_skb_refdst;
  skb_dst_set(skb_in, ((void*)0));
  err = ip_route_input(skb_in, fl4_dec.daddr, fl4_dec.saddr,
         RT_TOS(tos), rt2->dst.dev);

  dst_release(&rt2->dst);
  rt2 = skb_rtable(skb_in);
  skb_in->_skb_refdst = orefdst;
 }

 if (err)
  goto relookup_failed;

 rt2 = (struct rtable *) xfrm_lookup(net, &rt2->dst,
         flowi4_to_flowi(&fl4_dec), ((void*)0),
         XFRM_LOOKUP_ICMP);
 if (!IS_ERR(rt2)) {
  dst_release(&rt->dst);
  memcpy(fl4, &fl4_dec, sizeof(*fl4));
  rt = rt2;
 } else if (PTR_ERR(rt2) == -EPERM) {
  if (rt)
   dst_release(&rt->dst);
  return rt2;
 } else {
  err = PTR_ERR(rt2);
  goto relookup_failed;
 }
 return rt;

relookup_failed:
 if (rt)
  return rt;
 return ERR_PTR(err);
}
