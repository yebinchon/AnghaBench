
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_sock {int mutex; } ;
struct xdp_diag_req {int xdiag_show; } ;
struct xdp_diag_msg {int xdiag_ino; int xdiag_cookie; int xdiag_type; int xdiag_family; } ;
struct user_namespace {int dummy; } ;
struct sock {int sk_type; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;


 int AF_XDP ;
 int EMSGSIZE ;
 int SOCK_DIAG_BY_FAMILY ;
 int XDP_DIAG_MEMINFO ;
 int XDP_DIAG_UID ;
 int XDP_SHOW_INFO ;
 int XDP_SHOW_MEMINFO ;
 int XDP_SHOW_RING_CFG ;
 int XDP_SHOW_UMEM ;
 int from_kuid_munged (struct user_namespace*,int ) ;
 int memset (struct xdp_diag_msg*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct xdp_diag_msg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 scalar_t__ sock_diag_put_meminfo (struct sock*,struct sk_buff*,int ) ;
 int sock_diag_save_cookie (struct sock*,int ) ;
 int sock_i_uid (struct sock*) ;
 struct xdp_sock* xdp_sk (struct sock*) ;
 scalar_t__ xsk_diag_put_info (struct xdp_sock*,struct sk_buff*) ;
 scalar_t__ xsk_diag_put_rings_cfg (struct xdp_sock*,struct sk_buff*) ;
 scalar_t__ xsk_diag_put_umem (struct xdp_sock*,struct sk_buff*) ;

__attribute__((used)) static int xsk_diag_fill(struct sock *sk, struct sk_buff *nlskb,
    struct xdp_diag_req *req,
    struct user_namespace *user_ns,
    u32 portid, u32 seq, u32 flags, int sk_ino)
{
 struct xdp_sock *xs = xdp_sk(sk);
 struct xdp_diag_msg *msg;
 struct nlmsghdr *nlh;

 nlh = nlmsg_put(nlskb, portid, seq, SOCK_DIAG_BY_FAMILY, sizeof(*msg),
   flags);
 if (!nlh)
  return -EMSGSIZE;

 msg = nlmsg_data(nlh);
 memset(msg, 0, sizeof(*msg));
 msg->xdiag_family = AF_XDP;
 msg->xdiag_type = sk->sk_type;
 msg->xdiag_ino = sk_ino;
 sock_diag_save_cookie(sk, msg->xdiag_cookie);

 mutex_lock(&xs->mutex);
 if ((req->xdiag_show & XDP_SHOW_INFO) && xsk_diag_put_info(xs, nlskb))
  goto out_nlmsg_trim;

 if ((req->xdiag_show & XDP_SHOW_INFO) &&
     nla_put_u32(nlskb, XDP_DIAG_UID,
   from_kuid_munged(user_ns, sock_i_uid(sk))))
  goto out_nlmsg_trim;

 if ((req->xdiag_show & XDP_SHOW_RING_CFG) &&
     xsk_diag_put_rings_cfg(xs, nlskb))
  goto out_nlmsg_trim;

 if ((req->xdiag_show & XDP_SHOW_UMEM) &&
     xsk_diag_put_umem(xs, nlskb))
  goto out_nlmsg_trim;

 if ((req->xdiag_show & XDP_SHOW_MEMINFO) &&
     sock_diag_put_meminfo(sk, nlskb, XDP_DIAG_MEMINFO))
  goto out_nlmsg_trim;

 mutex_unlock(&xs->mutex);
 nlmsg_end(nlskb, nlh);
 return 0;

out_nlmsg_trim:
 mutex_unlock(&xs->mutex);
 nlmsg_cancel(nlskb, nlh);
 return -EMSGSIZE;
}
