
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcamsg {int dummy; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_type; int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int BUG () ;
 int CAP_NET_ADMIN ;
 int EINVAL ;
 int EPERM ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLM_F_REPLACE ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;



 size_t TCA_ACT_TAB ;
 int TCA_ROOT_MAX ;
 int netlink_capable (struct sk_buff*,int ) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int,struct nlattr**,int ,int *,struct netlink_ext_ack*) ;
 struct net* sock_net (int ) ;
 int tca_action_gd (struct net*,struct nlattr*,struct nlmsghdr*,int ,int const,struct netlink_ext_ack*) ;
 int tcf_action_add (struct net*,struct nlattr*,struct nlmsghdr*,int ,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int tc_ctl_action(struct sk_buff *skb, struct nlmsghdr *n,
    struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct nlattr *tca[TCA_ROOT_MAX + 1];
 u32 portid = skb ? NETLINK_CB(skb).portid : 0;
 int ret = 0, ovr = 0;

 if ((n->nlmsg_type != 129) &&
     !netlink_capable(skb, CAP_NET_ADMIN))
  return -EPERM;

 ret = nlmsg_parse_deprecated(n, sizeof(struct tcamsg), tca,
         TCA_ROOT_MAX, ((void*)0), extack);
 if (ret < 0)
  return ret;

 if (tca[TCA_ACT_TAB] == ((void*)0)) {
  NL_SET_ERR_MSG(extack, "Netlink action attributes missing");
  return -EINVAL;
 }


 switch (n->nlmsg_type) {
 case 128:






  if (n->nlmsg_flags & NLM_F_REPLACE)
   ovr = 1;
  ret = tcf_action_add(net, tca[TCA_ACT_TAB], n, portid, ovr,
         extack);
  break;
 case 130:
  ret = tca_action_gd(net, tca[TCA_ACT_TAB], n,
        portid, 130, extack);
  break;
 case 129:
  ret = tca_action_gd(net, tca[TCA_ACT_TAB], n,
        portid, 129, extack);
  break;
 default:
  BUG();
 }

 return ret;
}
