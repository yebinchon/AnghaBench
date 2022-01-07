
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct netlink_sock {int flags; scalar_t__ cb_running; } ;


 int NDIAG_FLAG_BROADCAST_ERROR ;
 int NDIAG_FLAG_CAP_ACK ;
 int NDIAG_FLAG_CB_RUNNING ;
 int NDIAG_FLAG_LISTEN_ALL_NSID ;
 int NDIAG_FLAG_NO_ENOBUFS ;
 int NDIAG_FLAG_PKTINFO ;
 int NETLINK_DIAG_FLAGS ;
 int NETLINK_F_BROADCAST_SEND_ERROR ;
 int NETLINK_F_CAP_ACK ;
 int NETLINK_F_LISTEN_ALL_NSID ;
 int NETLINK_F_RECV_NO_ENOBUFS ;
 int NETLINK_F_RECV_PKTINFO ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct netlink_sock* nlk_sk (struct sock*) ;

__attribute__((used)) static int sk_diag_put_flags(struct sock *sk, struct sk_buff *skb)
{
 struct netlink_sock *nlk = nlk_sk(sk);
 u32 flags = 0;

 if (nlk->cb_running)
  flags |= NDIAG_FLAG_CB_RUNNING;
 if (nlk->flags & NETLINK_F_RECV_PKTINFO)
  flags |= NDIAG_FLAG_PKTINFO;
 if (nlk->flags & NETLINK_F_BROADCAST_SEND_ERROR)
  flags |= NDIAG_FLAG_BROADCAST_ERROR;
 if (nlk->flags & NETLINK_F_RECV_NO_ENOBUFS)
  flags |= NDIAG_FLAG_NO_ENOBUFS;
 if (nlk->flags & NETLINK_F_LISTEN_ALL_NSID)
  flags |= NDIAG_FLAG_LISTEN_ALL_NSID;
 if (nlk->flags & NETLINK_F_CAP_ACK)
  flags |= NDIAG_FLAG_CAP_ACK;

 return nla_put_u32(skb, NETLINK_DIAG_FLAGS, flags);
}
