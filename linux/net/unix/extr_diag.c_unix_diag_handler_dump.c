
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_diag_req {int dummy; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct netlink_dump_control {int dump; } ;
struct net {int diag_nlsk; } ;


 int EINVAL ;
 int NLM_F_DUMP ;
 int netlink_dump_start (int ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ;
 int nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_len (struct nlmsghdr*) ;
 struct net* sock_net (int ) ;
 int unix_diag_dump ;
 int unix_diag_get_exact (struct sk_buff*,struct nlmsghdr*,int ) ;

__attribute__((used)) static int unix_diag_handler_dump(struct sk_buff *skb, struct nlmsghdr *h)
{
 int hdrlen = sizeof(struct unix_diag_req);
 struct net *net = sock_net(skb->sk);

 if (nlmsg_len(h) < hdrlen)
  return -EINVAL;

 if (h->nlmsg_flags & NLM_F_DUMP) {
  struct netlink_dump_control c = {
   .dump = unix_diag_dump,
  };
  return netlink_dump_start(net->diag_nlsk, skb, h, &c);
 } else
  return unix_diag_get_exact(skb, h, nlmsg_data(h));
}
