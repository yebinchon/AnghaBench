
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_tsflags; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int s_addr; } ;
struct in_pktinfo {TYPE_1__ ipi_spec_dst; int ipi_ifindex; } ;
struct TYPE_4__ {int saddr; } ;


 struct in_pktinfo* PKTINFO_SKB_CB (struct sk_buff*) ;
 int SOF_TIMESTAMPING_OPT_CMSG ;
 int SO_EE_ORIGIN_ICMP ;
 int SO_EE_ORIGIN_LOCAL ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;

__attribute__((used)) static bool ipv4_datagram_support_cmsg(const struct sock *sk,
           struct sk_buff *skb,
           int ee_origin)
{
 struct in_pktinfo *info;

 if (ee_origin == SO_EE_ORIGIN_ICMP)
  return 1;

 if (ee_origin == SO_EE_ORIGIN_LOCAL)
  return 0;





 info = PKTINFO_SKB_CB(skb);
 if (!(sk->sk_tsflags & SOF_TIMESTAMPING_OPT_CMSG) ||
     !info->ipi_ifindex)
  return 0;

 info->ipi_spec_dst.s_addr = ip_hdr(skb)->saddr;
 return 1;
}
