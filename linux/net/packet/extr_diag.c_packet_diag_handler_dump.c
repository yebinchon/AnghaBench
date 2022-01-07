
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct packet_diag_req {scalar_t__ sdiag_protocol; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct netlink_dump_control {int dump; } ;
struct net {int diag_nlsk; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int NLM_F_DUMP ;
 int netlink_dump_start (int ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ;
 struct packet_diag_req* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_len (struct nlmsghdr*) ;
 int packet_diag_dump ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int packet_diag_handler_dump(struct sk_buff *skb, struct nlmsghdr *h)
{
 int hdrlen = sizeof(struct packet_diag_req);
 struct net *net = sock_net(skb->sk);
 struct packet_diag_req *req;

 if (nlmsg_len(h) < hdrlen)
  return -EINVAL;

 req = nlmsg_data(h);

 if (req->sdiag_protocol)
  return -EINVAL;

 if (h->nlmsg_flags & NLM_F_DUMP) {
  struct netlink_dump_control c = {
   .dump = packet_diag_dump,
  };
  return netlink_dump_start(net->diag_nlsk, skb, h, &c);
 } else
  return -EOPNOTSUPP;
}
