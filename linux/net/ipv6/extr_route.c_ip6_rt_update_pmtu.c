
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {int dummy; } ;


 int __ip6_rt_update_pmtu (struct dst_entry*,struct sock*,int *,int ) ;
 int * ipv6_hdr (struct sk_buff*) ;

__attribute__((used)) static void ip6_rt_update_pmtu(struct dst_entry *dst, struct sock *sk,
          struct sk_buff *skb, u32 mtu)
{
 __ip6_rt_update_pmtu(dst, sk, skb ? ipv6_hdr(skb) : ((void*)0), mtu);
}
