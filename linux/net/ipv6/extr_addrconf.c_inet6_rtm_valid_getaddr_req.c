
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ifaddrmsg {scalar_t__ ifa_scope; scalar_t__ ifa_flags; scalar_t__ ifa_prefixlen; } ;


 int EINVAL ;


 int IFA_MAX ;

 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int ifa_ipv6_policy ;
 int netlink_strict_get_check (struct sk_buff*) ;
 struct ifaddrmsg* nlmsg_data (struct nlmsghdr const*) ;
 scalar_t__ nlmsg_msg_size (int) ;
 int nlmsg_parse_deprecated (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int nlmsg_parse_deprecated_strict (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int inet6_rtm_valid_getaddr_req(struct sk_buff *skb,
           const struct nlmsghdr *nlh,
           struct nlattr **tb,
           struct netlink_ext_ack *extack)
{
 struct ifaddrmsg *ifm;
 int i, err;

 if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*ifm))) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid header for get address request");
  return -EINVAL;
 }

 ifm = nlmsg_data(nlh);
 if (ifm->ifa_prefixlen || ifm->ifa_flags || ifm->ifa_scope) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid values in header for get address request");
  return -EINVAL;
 }

 if (!netlink_strict_get_check(skb))
  return nlmsg_parse_deprecated(nlh, sizeof(*ifm), tb, IFA_MAX,
           ifa_ipv6_policy, extack);

 err = nlmsg_parse_deprecated_strict(nlh, sizeof(*ifm), tb, IFA_MAX,
         ifa_ipv6_policy, extack);
 if (err)
  return err;

 for (i = 0; i <= IFA_MAX; i++) {
  if (!tb[i])
   continue;

  switch (i) {
  case 128:
  case 130:
  case 129:
   break;
  default:
   NL_SET_ERR_MSG_MOD(extack, "Unsupported attribute in get address request");
   return -EINVAL;
  }
 }

 return 0;
}
