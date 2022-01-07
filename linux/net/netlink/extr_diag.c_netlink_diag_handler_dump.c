
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct netlink_dump_control {int done; int dump; } ;
struct netlink_diag_req {int dummy; } ;
struct net {int diag_nlsk; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int NLM_F_DUMP ;
 int netlink_diag_dump ;
 int netlink_diag_dump_done ;
 int netlink_dump_start (int ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ;
 int nlmsg_len (struct nlmsghdr*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int netlink_diag_handler_dump(struct sk_buff *skb, struct nlmsghdr *h)
{
 int hdrlen = sizeof(struct netlink_diag_req);
 struct net *net = sock_net(skb->sk);

 if (nlmsg_len(h) < hdrlen)
  return -EINVAL;

 if (h->nlmsg_flags & NLM_F_DUMP) {
  struct netlink_dump_control c = {
   .dump = netlink_diag_dump,
   .done = netlink_diag_dump_done,
  };
  return netlink_dump_start(net->diag_nlsk, skb, h, &c);
 } else
  return -EOPNOTSUPP;
}
