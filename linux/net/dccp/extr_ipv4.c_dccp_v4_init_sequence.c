
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int dccph_sport; int dccph_dport; } ;
struct TYPE_3__ {int saddr; int daddr; } ;


 TYPE_2__* dccp_hdr (struct sk_buff const*) ;
 TYPE_1__* ip_hdr (struct sk_buff const*) ;
 int secure_dccp_sequence_number (int ,int ,int ,int ) ;

__attribute__((used)) static inline u64 dccp_v4_init_sequence(const struct sk_buff *skb)
{
 return secure_dccp_sequence_number(ip_hdr(skb)->daddr,
        ip_hdr(skb)->saddr,
        dccp_hdr(skb)->dccph_dport,
        dccp_hdr(skb)->dccph_sport);
}
