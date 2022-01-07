
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; int nlmsg_flags; } ;
struct netlink_dump_control {int min_dump_alloc; int dump; } ;
struct net {int diag_nlsk; } ;


 int NLM_F_DUMP ;
 int SKB_WITH_OVERHEAD (int) ;
 scalar_t__ SOCK_DIAG_BY_FAMILY ;
 int netlink_dump_start (int ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ;
 int smc_diag_dump ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int smc_diag_handler_dump(struct sk_buff *skb, struct nlmsghdr *h)
{
 struct net *net = sock_net(skb->sk);

 if (h->nlmsg_type == SOCK_DIAG_BY_FAMILY &&
     h->nlmsg_flags & NLM_F_DUMP) {
  {
   struct netlink_dump_control c = {
    .dump = smc_diag_dump,
    .min_dump_alloc = SKB_WITH_OVERHEAD(32768),
   };
   return netlink_dump_start(net->diag_nlsk, skb, h, &c);
  }
 }
 return 0;
}
