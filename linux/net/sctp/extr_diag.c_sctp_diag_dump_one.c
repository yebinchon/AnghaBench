
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {void* sin6_family; int sin6_addr; int sin6_port; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {scalar_t__ sin_family; TYPE_1__ sin_addr; int sin_port; } ;
union sctp_addr {TYPE_4__ v6; TYPE_2__ v4; } ;
struct sk_buff {int sk; } ;
struct sctp_comm_param {int net_admin; struct nlmsghdr const* nlh; struct inet_diag_req_v2 const* r; struct sk_buff* skb; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_7__ {int * idiag_dst; int idiag_dport; int * idiag_src; int idiag_sport; } ;
struct inet_diag_req_v2 {scalar_t__ sdiag_family; TYPE_3__ id; } ;


 scalar_t__ AF_INET ;
 void* AF_INET6 ;
 int CAP_NET_ADMIN ;
 int memcpy (int *,int *,int) ;
 int netlink_net_capable (struct sk_buff*,int ) ;
 int sctp_transport_lookup_process (int ,struct net*,union sctp_addr*,union sctp_addr*,struct sctp_comm_param*) ;
 int sctp_tsp_dump_one ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int sctp_diag_dump_one(struct sk_buff *in_skb,
         const struct nlmsghdr *nlh,
         const struct inet_diag_req_v2 *req)
{
 struct net *net = sock_net(in_skb->sk);
 union sctp_addr laddr, paddr;
 struct sctp_comm_param commp = {
  .skb = in_skb,
  .r = req,
  .nlh = nlh,
  .net_admin = netlink_net_capable(in_skb, CAP_NET_ADMIN),
 };

 if (req->sdiag_family == AF_INET) {
  laddr.v4.sin_port = req->id.idiag_sport;
  laddr.v4.sin_addr.s_addr = req->id.idiag_src[0];
  laddr.v4.sin_family = AF_INET;

  paddr.v4.sin_port = req->id.idiag_dport;
  paddr.v4.sin_addr.s_addr = req->id.idiag_dst[0];
  paddr.v4.sin_family = AF_INET;
 } else {
  laddr.v6.sin6_port = req->id.idiag_sport;
  memcpy(&laddr.v6.sin6_addr, req->id.idiag_src,
         sizeof(laddr.v6.sin6_addr));
  laddr.v6.sin6_family = AF_INET6;

  paddr.v6.sin6_port = req->id.idiag_dport;
  memcpy(&paddr.v6.sin6_addr, req->id.idiag_dst,
         sizeof(paddr.v6.sin6_addr));
  paddr.v6.sin6_family = AF_INET6;
 }

 return sctp_transport_lookup_process(sctp_tsp_dump_one,
          net, &laddr, &paddr, &commp);
}
