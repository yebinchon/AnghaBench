
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct TYPE_3__ {int s_addr; } ;
struct in_pktinfo {TYPE_1__ ipi_addr; } ;
typedef int info ;
struct TYPE_4__ {int daddr; } ;


 int IP_PKTINFO ;
 struct in_pktinfo* PKTINFO_SKB_CB (struct sk_buff*) ;
 int SOL_IP ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int put_cmsg (struct msghdr*,int ,int ,int,struct in_pktinfo*) ;

__attribute__((used)) static void ip_cmsg_recv_pktinfo(struct msghdr *msg, struct sk_buff *skb)
{
 struct in_pktinfo info = *PKTINFO_SKB_CB(skb);

 info.ipi_addr.s_addr = ip_hdr(skb)->daddr;

 put_cmsg(msg, SOL_IP, IP_PKTINFO, sizeof(info), &info);
}
