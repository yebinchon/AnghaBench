
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_callback {int answer_flags; struct netlink_ext_ack* extack; } ;
struct net {int dummy; } ;
struct inet6_fill_args {int netnsid; int flags; int ifindex; } ;
struct ifaddrmsg {int ifa_index; scalar_t__ ifa_scope; scalar_t__ ifa_flags; scalar_t__ ifa_prefixlen; } ;


 int EINVAL ;
 int IFA_MAX ;
 int IFA_TARGET_NETNSID ;
 scalar_t__ IS_ERR (struct net*) ;
 int NLM_F_DUMP_FILTERED ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct net*) ;
 int ifa_ipv6_policy ;
 int nla_get_s32 (struct nlattr*) ;
 struct ifaddrmsg* nlmsg_data (struct nlmsghdr const*) ;
 scalar_t__ nlmsg_msg_size (int) ;
 int nlmsg_parse_deprecated_strict (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 struct net* rtnl_get_net_ns_capable (struct sock*,int) ;

__attribute__((used)) static int inet6_valid_dump_ifaddr_req(const struct nlmsghdr *nlh,
           struct inet6_fill_args *fillargs,
           struct net **tgt_net, struct sock *sk,
           struct netlink_callback *cb)
{
 struct netlink_ext_ack *extack = cb->extack;
 struct nlattr *tb[IFA_MAX+1];
 struct ifaddrmsg *ifm;
 int err, i;

 if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*ifm))) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid header for address dump request");
  return -EINVAL;
 }

 ifm = nlmsg_data(nlh);
 if (ifm->ifa_prefixlen || ifm->ifa_flags || ifm->ifa_scope) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid values in header for address dump request");
  return -EINVAL;
 }

 fillargs->ifindex = ifm->ifa_index;
 if (fillargs->ifindex) {
  cb->answer_flags |= NLM_F_DUMP_FILTERED;
  fillargs->flags |= NLM_F_DUMP_FILTERED;
 }

 err = nlmsg_parse_deprecated_strict(nlh, sizeof(*ifm), tb, IFA_MAX,
         ifa_ipv6_policy, extack);
 if (err < 0)
  return err;

 for (i = 0; i <= IFA_MAX; ++i) {
  if (!tb[i])
   continue;

  if (i == IFA_TARGET_NETNSID) {
   struct net *net;

   fillargs->netnsid = nla_get_s32(tb[i]);
   net = rtnl_get_net_ns_capable(sk, fillargs->netnsid);
   if (IS_ERR(net)) {
    fillargs->netnsid = -1;
    NL_SET_ERR_MSG_MOD(extack, "Invalid target network namespace id");
    return PTR_ERR(net);
   }
   *tgt_net = net;
  } else {
   NL_SET_ERR_MSG_MOD(extack, "Unsupported attribute in dump request");
   return -EINVAL;
  }
 }

 return 0;
}
