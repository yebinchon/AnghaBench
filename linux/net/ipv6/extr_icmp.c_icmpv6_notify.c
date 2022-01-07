
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sk_buff {int dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct ipv6hdr {size_t nexthdr; } ;
struct inet6_protocol {int (* err_handler ) (struct sk_buff*,int *,size_t,size_t,int,int ) ;} ;
typedef int __be32 ;
typedef int __be16 ;


 int ICMP6_MIB_INERRORS ;
 int __ICMP6_INC_STATS (struct net*,int ,int ) ;
 int __in6_dev_get (int ) ;
 struct net* dev_net (int ) ;
 int * inet6_protos ;
 scalar_t__ ipv6_ext_hdr (size_t) ;
 int ipv6_skip_exthdr (struct sk_buff*,int,size_t*,int *) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int raw6_icmp_error (struct sk_buff*,size_t,size_t,size_t,int,int ) ;
 struct inet6_protocol* rcu_dereference (int ) ;
 int stub1 (struct sk_buff*,int *,size_t,size_t,int,int ) ;

void icmpv6_notify(struct sk_buff *skb, u8 type, u8 code, __be32 info)
{
 const struct inet6_protocol *ipprot;
 int inner_offset;
 __be16 frag_off;
 u8 nexthdr;
 struct net *net = dev_net(skb->dev);

 if (!pskb_may_pull(skb, sizeof(struct ipv6hdr)))
  goto out;

 nexthdr = ((struct ipv6hdr *)skb->data)->nexthdr;
 if (ipv6_ext_hdr(nexthdr)) {

  inner_offset = ipv6_skip_exthdr(skb, sizeof(struct ipv6hdr),
      &nexthdr, &frag_off);
  if (inner_offset < 0)
   goto out;
 } else {
  inner_offset = sizeof(struct ipv6hdr);
 }


 if (!pskb_may_pull(skb, inner_offset+8))
  goto out;
 ipprot = rcu_dereference(inet6_protos[nexthdr]);
 if (ipprot && ipprot->err_handler)
  ipprot->err_handler(skb, ((void*)0), type, code, inner_offset, info);

 raw6_icmp_error(skb, nexthdr, type, code, inner_offset, info);
 return;

out:
 __ICMP6_INC_STATS(net, __in6_dev_get(skb->dev), ICMP6_MIB_INERRORS);
}
