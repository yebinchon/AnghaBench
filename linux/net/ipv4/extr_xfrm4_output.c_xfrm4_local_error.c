
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int sk; scalar_t__ encapsulation; } ;
struct iphdr {int daddr; } ;
struct TYPE_2__ {int inet_dport; } ;


 int EMSGSIZE ;
 TYPE_1__* inet_sk (int ) ;
 struct iphdr* inner_ip_hdr (struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_local_error (int ,int ,int ,int ,int ) ;

void xfrm4_local_error(struct sk_buff *skb, u32 mtu)
{
 struct iphdr *hdr;

 hdr = skb->encapsulation ? inner_ip_hdr(skb) : ip_hdr(skb);
 ip_local_error(skb->sk, EMSGSIZE, hdr->daddr,
         inet_sk(skb->sk)->inet_dport, mtu);
}
