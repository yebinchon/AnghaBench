
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_sock_diag_req {int dummy; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct netlink_dump_control {int done; int dump; int start; } ;
struct net {int diag_nlsk; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int NLM_F_DUMP ;
 int netlink_dump_start (int ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ;
 int nlmsg_len (struct nlmsghdr*) ;
 struct net* sock_net (int ) ;
 int tipc_diag_dump ;
 int tipc_dump_done ;
 int tipc_dump_start ;

__attribute__((used)) static int tipc_sock_diag_handler_dump(struct sk_buff *skb,
           struct nlmsghdr *h)
{
 int hdrlen = sizeof(struct tipc_sock_diag_req);
 struct net *net = sock_net(skb->sk);

 if (nlmsg_len(h) < hdrlen)
  return -EINVAL;

 if (h->nlmsg_flags & NLM_F_DUMP) {
  struct netlink_dump_control c = {
   .start = tipc_dump_start,
   .dump = tipc_diag_dump,
   .done = tipc_dump_done,
  };
  netlink_dump_start(net->diag_nlsk, skb, h, &c);
  return 0;
 }
 return -EOPNOTSUPP;
}
