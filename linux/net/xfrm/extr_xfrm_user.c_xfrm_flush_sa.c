
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_usersa_flush {int proto; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_pid; int nlmsg_seq; int nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int proto; } ;
struct km_event {struct net* net; int portid; int seq; int event; TYPE_1__ data; } ;


 int ESRCH ;
 int km_state_notify (int *,struct km_event*) ;
 struct xfrm_usersa_flush* nlmsg_data (struct nlmsghdr*) ;
 struct net* sock_net (int ) ;
 int xfrm_state_flush (struct net*,int ,int,int) ;

__attribute__((used)) static int xfrm_flush_sa(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct km_event c;
 struct xfrm_usersa_flush *p = nlmsg_data(nlh);
 int err;

 err = xfrm_state_flush(net, p->proto, 1, 0);
 if (err) {
  if (err == -ESRCH)
   return 0;
  return err;
 }
 c.data.proto = p->proto;
 c.event = nlh->nlmsg_type;
 c.seq = nlh->nlmsg_seq;
 c.portid = nlh->nlmsg_pid;
 c.net = net;
 km_state_notify(((void*)0), &c);

 return 0;
}
