
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_diag_req {int dummy; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct netlink_dump_control {int dump; } ;
struct net {int diag_nlsk; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int NLM_F_DUMP ;
 int netlink_dump_start (int ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ;
 int nlmsg_len (struct nlmsghdr*) ;
 struct net* sock_net (int ) ;
 int xsk_diag_dump ;

__attribute__((used)) static int xsk_diag_handler_dump(struct sk_buff *nlskb, struct nlmsghdr *hdr)
{
 struct netlink_dump_control c = { .dump = xsk_diag_dump };
 int hdrlen = sizeof(struct xdp_diag_req);
 struct net *net = sock_net(nlskb->sk);

 if (nlmsg_len(hdr) < hdrlen)
  return -EINVAL;

 if (!(hdr->nlmsg_flags & NLM_F_DUMP))
  return -EOPNOTSUPP;

 return netlink_dump_start(net->diag_nlsk, nlskb, hdr, &c);
}
