
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netconfmsg {int dummy; } ;


 int EINVAL ;

 int NETCONFA_MAX ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int devconf_mpls_policy ;
 int netlink_strict_get_check (struct sk_buff*) ;
 scalar_t__ nlmsg_msg_size (int) ;
 int nlmsg_parse_deprecated (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int nlmsg_parse_deprecated_strict (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int mpls_netconf_valid_get_req(struct sk_buff *skb,
          const struct nlmsghdr *nlh,
          struct nlattr **tb,
          struct netlink_ext_ack *extack)
{
 int i, err;

 if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(struct netconfmsg))) {
  NL_SET_ERR_MSG_MOD(extack,
       "Invalid header for netconf get request");
  return -EINVAL;
 }

 if (!netlink_strict_get_check(skb))
  return nlmsg_parse_deprecated(nlh, sizeof(struct netconfmsg),
           tb, NETCONFA_MAX,
           devconf_mpls_policy, extack);

 err = nlmsg_parse_deprecated_strict(nlh, sizeof(struct netconfmsg),
         tb, NETCONFA_MAX,
         devconf_mpls_policy, extack);
 if (err)
  return err;

 for (i = 0; i <= NETCONFA_MAX; i++) {
  if (!tb[i])
   continue;

  switch (i) {
  case 128:
   break;
  default:
   NL_SET_ERR_MSG_MOD(extack, "Unsupported attribute in netconf get request");
   return -EINVAL;
  }
 }

 return 0;
}
