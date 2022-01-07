
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_pid; int nlmsg_seq; int nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct km_event {struct net* net; int portid; int seq; int event; TYPE_1__ data; } ;


 int ESRCH ;
 int XFRM_POLICY_TYPE_MAIN ;
 int copy_from_user_policy_type (int *,struct nlattr**) ;
 int km_policy_notify (int *,int ,struct km_event*) ;
 struct net* sock_net (int ) ;
 int xfrm_policy_flush (struct net*,int ,int) ;

__attribute__((used)) static int xfrm_flush_policy(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct km_event c;
 u8 type = XFRM_POLICY_TYPE_MAIN;
 int err;

 err = copy_from_user_policy_type(&type, attrs);
 if (err)
  return err;

 err = xfrm_policy_flush(net, type, 1);
 if (err) {
  if (err == -ESRCH)
   return 0;
  return err;
 }

 c.data.type = type;
 c.event = nlh->nlmsg_type;
 c.seq = nlh->nlmsg_seq;
 c.portid = nlh->nlmsg_pid;
 c.net = net;
 km_policy_notify(((void*)0), 0, &c);
 return 0;
}
