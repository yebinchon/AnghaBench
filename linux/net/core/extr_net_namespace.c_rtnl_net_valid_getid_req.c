
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtgenmsg {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EINVAL ;

 int NETNSA_MAX ;



 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int netlink_strict_get_check (struct sk_buff*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int nlmsg_parse_deprecated_strict (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int rtnl_net_policy ;

__attribute__((used)) static int rtnl_net_valid_getid_req(struct sk_buff *skb,
        const struct nlmsghdr *nlh,
        struct nlattr **tb,
        struct netlink_ext_ack *extack)
{
 int i, err;

 if (!netlink_strict_get_check(skb))
  return nlmsg_parse_deprecated(nlh, sizeof(struct rtgenmsg),
           tb, NETNSA_MAX, rtnl_net_policy,
           extack);

 err = nlmsg_parse_deprecated_strict(nlh, sizeof(struct rtgenmsg), tb,
         NETNSA_MAX, rtnl_net_policy,
         extack);
 if (err)
  return err;

 for (i = 0; i <= NETNSA_MAX; i++) {
  if (!tb[i])
   continue;

  switch (i) {
  case 129:
  case 131:
  case 130:
  case 128:
   break;
  default:
   NL_SET_ERR_MSG(extack, "Unsupported attribute in peer netns getid request");
   return -EINVAL;
  }
 }

 return 0;
}
