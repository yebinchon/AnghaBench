
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct msghdr {int dummy; } ;
struct llc_sock {int cmsg_flags; TYPE_1__* dev; } ;
struct llc_pktinfo {int lpi_mac; int lpi_sap; int lpi_ifindex; } ;
typedef int info ;
struct TYPE_2__ {int ifindex; } ;


 int LLC_CMSG_PKTINFO ;
 int LLC_OPT_PKTINFO ;
 int SOL_LLC ;
 int llc_pdu_decode_da (struct sk_buff*,int ) ;
 int llc_pdu_decode_dsap (struct sk_buff*,int *) ;
 struct llc_sock* llc_sk (int ) ;
 int memset (struct llc_pktinfo*,int ,int) ;
 int put_cmsg (struct msghdr*,int ,int ,int,struct llc_pktinfo*) ;

__attribute__((used)) static void llc_cmsg_rcv(struct msghdr *msg, struct sk_buff *skb)
{
 struct llc_sock *llc = llc_sk(skb->sk);

 if (llc->cmsg_flags & LLC_CMSG_PKTINFO) {
  struct llc_pktinfo info;

  memset(&info, 0, sizeof(info));
  info.lpi_ifindex = llc_sk(skb->sk)->dev->ifindex;
  llc_pdu_decode_dsap(skb, &info.lpi_sap);
  llc_pdu_decode_da(skb, info.lpi_mac);
  put_cmsg(msg, SOL_LLC, LLC_OPT_PKTINFO, sizeof(info), &info);
 }
}
