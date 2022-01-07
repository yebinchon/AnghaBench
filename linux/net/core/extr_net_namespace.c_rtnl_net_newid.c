
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct rtgenmsg {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int nsid_lock; } ;
struct TYPE_2__ {int portid; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOSPC ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct net*) ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 size_t NETNSA_FD ;
 int NETNSA_MAX ;
 size_t NETNSA_NSID ;
 size_t NETNSA_PID ;
 int NL_SET_BAD_ATTR (struct netlink_ext_ack*,struct nlattr*) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct net*) ;
 int RTM_NEWNSID ;
 scalar_t__ __peernet2id (struct net*,struct net*) ;
 int alloc_netid (struct net*,struct net*,int) ;
 struct net* get_net_ns_by_fd (int ) ;
 struct net* get_net_ns_by_pid (int ) ;
 int nla_get_s32 (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;
 int put_net (struct net*) ;
 int rtnl_net_notifyid (struct net*,int ,int,int ,struct nlmsghdr*,int ) ;
 int rtnl_net_policy ;
 struct net* sock_net (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int rtnl_net_newid(struct sk_buff *skb, struct nlmsghdr *nlh,
     struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct nlattr *tb[NETNSA_MAX + 1];
 struct nlattr *nla;
 struct net *peer;
 int nsid, err;

 err = nlmsg_parse_deprecated(nlh, sizeof(struct rtgenmsg), tb,
         NETNSA_MAX, rtnl_net_policy, extack);
 if (err < 0)
  return err;
 if (!tb[NETNSA_NSID]) {
  NL_SET_ERR_MSG(extack, "nsid is missing");
  return -EINVAL;
 }
 nsid = nla_get_s32(tb[NETNSA_NSID]);

 if (tb[NETNSA_PID]) {
  peer = get_net_ns_by_pid(nla_get_u32(tb[NETNSA_PID]));
  nla = tb[NETNSA_PID];
 } else if (tb[NETNSA_FD]) {
  peer = get_net_ns_by_fd(nla_get_u32(tb[NETNSA_FD]));
  nla = tb[NETNSA_FD];
 } else {
  NL_SET_ERR_MSG(extack, "Peer netns reference is missing");
  return -EINVAL;
 }
 if (IS_ERR(peer)) {
  NL_SET_BAD_ATTR(extack, nla);
  NL_SET_ERR_MSG(extack, "Peer netns reference is invalid");
  return PTR_ERR(peer);
 }

 spin_lock_bh(&net->nsid_lock);
 if (__peernet2id(net, peer) >= 0) {
  spin_unlock_bh(&net->nsid_lock);
  err = -EEXIST;
  NL_SET_BAD_ATTR(extack, nla);
  NL_SET_ERR_MSG(extack,
          "Peer netns already has a nsid assigned");
  goto out;
 }

 err = alloc_netid(net, peer, nsid);
 spin_unlock_bh(&net->nsid_lock);
 if (err >= 0) {
  rtnl_net_notifyid(net, RTM_NEWNSID, err, NETLINK_CB(skb).portid,
      nlh, GFP_KERNEL);
  err = 0;
 } else if (err == -ENOSPC && nsid >= 0) {
  err = -EEXIST;
  NL_SET_BAD_ATTR(extack, tb[NETNSA_NSID]);
  NL_SET_ERR_MSG(extack, "The specified nsid is already used");
 }
out:
 put_net(peer);
 return err;
}
