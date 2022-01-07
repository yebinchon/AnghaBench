
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int __u64 ;
struct TYPE_8__ {int dccph_sport; int dccph_dport; } ;
struct TYPE_6__ {int s6_addr32; } ;
struct TYPE_5__ {int s6_addr32; } ;
struct TYPE_7__ {TYPE_2__ saddr; TYPE_1__ daddr; } ;


 TYPE_4__* dccp_hdr (struct sk_buff*) ;
 TYPE_3__* ipv6_hdr (struct sk_buff*) ;
 int secure_dccpv6_sequence_number (int ,int ,int ,int ) ;

__attribute__((used)) static inline __u64 dccp_v6_init_sequence(struct sk_buff *skb)
{
 return secure_dccpv6_sequence_number(ipv6_hdr(skb)->daddr.s6_addr32,
          ipv6_hdr(skb)->saddr.s6_addr32,
          dccp_hdr(skb)->dccph_dport,
          dccp_hdr(skb)->dccph_sport );

}
