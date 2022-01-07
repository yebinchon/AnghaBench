
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int sk; } ;
struct reply_func {int (* cb ) (struct net_device*,struct nlmsghdr*,int ,struct nlattr**,struct sk_buff*) ;int type; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; int nlmsg_seq; int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dcbnl_ops; } ;
struct net {int dummy; } ;
struct dcbmsg {size_t cmd; } ;
struct TYPE_2__ {int portid; } ;


 int CAP_NET_ADMIN ;
 size_t DCB_ATTR_IFNAME ;
 int DCB_ATTR_MAX ;
 size_t DCB_CMD_MAX ;
 int EINVAL ;
 int ENOBUFS ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int EPERM ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 scalar_t__ RTM_SETDCB ;
 struct net_device* __dev_get_by_name (struct net*,int ) ;
 struct sk_buff* dcbnl_newmsg (int ,size_t,int ,int ,int ,struct nlmsghdr**) ;
 int dcbnl_rtnl_policy ;
 int netlink_capable (struct sk_buff*,int ) ;
 int nla_data (struct nlattr*) ;
 struct dcbmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;
 struct reply_func* reply_funcs ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 struct net* sock_net (int ) ;
 int stub1 (struct net_device*,struct nlmsghdr*,int ,struct nlattr**,struct sk_buff*) ;

__attribute__((used)) static int dcb_doit(struct sk_buff *skb, struct nlmsghdr *nlh,
      struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct net_device *netdev;
 struct dcbmsg *dcb = nlmsg_data(nlh);
 struct nlattr *tb[DCB_ATTR_MAX + 1];
 u32 portid = skb ? NETLINK_CB(skb).portid : 0;
 int ret = -EINVAL;
 struct sk_buff *reply_skb;
 struct nlmsghdr *reply_nlh = ((void*)0);
 const struct reply_func *fn;

 if ((nlh->nlmsg_type == RTM_SETDCB) && !netlink_capable(skb, CAP_NET_ADMIN))
  return -EPERM;

 ret = nlmsg_parse_deprecated(nlh, sizeof(*dcb), tb, DCB_ATTR_MAX,
         dcbnl_rtnl_policy, extack);
 if (ret < 0)
  return ret;

 if (dcb->cmd > DCB_CMD_MAX)
  return -EINVAL;


 fn = &reply_funcs[dcb->cmd];
 if (!fn->cb)
  return -EOPNOTSUPP;

 if (!tb[DCB_ATTR_IFNAME])
  return -EINVAL;

 netdev = __dev_get_by_name(net, nla_data(tb[DCB_ATTR_IFNAME]));
 if (!netdev)
  return -ENODEV;

 if (!netdev->dcbnl_ops)
  return -EOPNOTSUPP;

 reply_skb = dcbnl_newmsg(fn->type, dcb->cmd, portid, nlh->nlmsg_seq,
     nlh->nlmsg_flags, &reply_nlh);
 if (!reply_skb)
  return -ENOBUFS;

 ret = fn->cb(netdev, nlh, nlh->nlmsg_seq, tb, reply_skb);
 if (ret < 0) {
  nlmsg_free(reply_skb);
  goto out;
 }

 nlmsg_end(reply_skb, reply_nlh);

 ret = rtnl_unicast(reply_skb, net, portid);
out:
 return ret;
}
