
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_dump_control {int dump; } ;
struct net {int diag_nlsk; } ;
struct inet_diag_req_v2 {int dummy; } ;


 int EINVAL ;
 int INET_DIAG_REQ_BYTECODE ;
 int NLM_F_DUMP ;
 scalar_t__ SOCK_DIAG_BY_FAMILY ;
 int inet_diag_bc_audit (struct nlattr*,struct sk_buff*) ;
 int inet_diag_cmd_exact (scalar_t__,struct sk_buff*,struct nlmsghdr*,int ) ;
 int inet_diag_dump ;
 int netlink_dump_start (int ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ;
 scalar_t__ nlmsg_attrlen (struct nlmsghdr*,int) ;
 int nlmsg_data (struct nlmsghdr*) ;
 struct nlattr* nlmsg_find_attr (struct nlmsghdr*,int,int ) ;
 int nlmsg_len (struct nlmsghdr*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int inet_diag_handler_cmd(struct sk_buff *skb, struct nlmsghdr *h)
{
 int hdrlen = sizeof(struct inet_diag_req_v2);
 struct net *net = sock_net(skb->sk);

 if (nlmsg_len(h) < hdrlen)
  return -EINVAL;

 if (h->nlmsg_type == SOCK_DIAG_BY_FAMILY &&
     h->nlmsg_flags & NLM_F_DUMP) {
  if (nlmsg_attrlen(h, hdrlen)) {
   struct nlattr *attr;
   int err;

   attr = nlmsg_find_attr(h, hdrlen,
            INET_DIAG_REQ_BYTECODE);
   err = inet_diag_bc_audit(attr, skb);
   if (err)
    return err;
  }
  {
   struct netlink_dump_control c = {
    .dump = inet_diag_dump,
   };
   return netlink_dump_start(net->diag_nlsk, skb, h, &c);
  }
 }

 return inet_diag_cmd_exact(h->nlmsg_type, skb, h, nlmsg_data(h));
}
