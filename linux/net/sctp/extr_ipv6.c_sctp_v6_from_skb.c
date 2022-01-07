
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; int sin6_port; int sin6_scope_id; scalar_t__ sin6_flowinfo; int sin6_family; } ;
union sctp_addr {struct sockaddr_in6 v6; } ;
struct sk_buff {scalar_t__ cb; } ;
struct sctphdr {int dest; int source; } ;
struct inet6_skb_parm {int iif; } ;
struct TYPE_2__ {int daddr; int saddr; } ;


 int AF_INET6 ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 struct sctphdr* sctp_hdr (struct sk_buff*) ;

__attribute__((used)) static void sctp_v6_from_skb(union sctp_addr *addr, struct sk_buff *skb,
        int is_saddr)
{

 struct sctphdr *sh = sctp_hdr(skb);
 struct sockaddr_in6 *sa = &addr->v6;

 addr->v6.sin6_family = AF_INET6;
 addr->v6.sin6_flowinfo = 0;
 addr->v6.sin6_scope_id = ((struct inet6_skb_parm *)skb->cb)->iif;

 if (is_saddr) {
  sa->sin6_port = sh->source;
  sa->sin6_addr = ipv6_hdr(skb)->saddr;
 } else {
  sa->sin6_port = sh->dest;
  sa->sin6_addr = ipv6_hdr(skb)->daddr;
 }
}
