
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct inet6_skb_parm {int dummy; } ;
typedef int __be32 ;


 int __udp6_lib_err (struct sk_buff*,struct inet6_skb_parm*,int ,int ,int,int ,int *) ;
 int udp_table ;

__attribute__((used)) static __inline__ int udpv6_err(struct sk_buff *skb,
    struct inet6_skb_parm *opt, u8 type,
    u8 code, int offset, __be32 info)
{
 return __udp6_lib_err(skb, opt, type, code, offset, info, &udp_table);
}
