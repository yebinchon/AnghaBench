
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
union sctp_addr {struct sockaddr_in v4; } ;
struct sk_buff {int dummy; } ;
struct sctphdr {int dest; int source; } ;
struct TYPE_4__ {int daddr; int saddr; } ;


 int AF_INET ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 struct sctphdr* sctp_hdr (struct sk_buff*) ;

__attribute__((used)) static void sctp_v4_from_skb(union sctp_addr *addr, struct sk_buff *skb,
        int is_saddr)
{

 struct sctphdr *sh = sctp_hdr(skb);
 struct sockaddr_in *sa = &addr->v4;

 addr->v4.sin_family = AF_INET;

 if (is_saddr) {
  sa->sin_port = sh->source;
  sa->sin_addr.s_addr = ip_hdr(skb)->saddr;
 } else {
  sa->sin_port = sh->dest;
  sa->sin_addr.s_addr = ip_hdr(skb)->daddr;
 }
}
