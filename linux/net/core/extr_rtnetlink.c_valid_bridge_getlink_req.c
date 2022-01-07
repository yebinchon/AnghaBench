
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; scalar_t__ ifi_change; scalar_t__ ifi_flags; scalar_t__ ifi_type; scalar_t__ __ifi_pad; } ;


 int EINVAL ;

 int IFLA_MAX ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int ifla_policy ;
 int nla_get_u32 (struct nlattr*) ;
 struct ifinfomsg* nlmsg_data (struct nlmsghdr const*) ;
 scalar_t__ nlmsg_msg_size (int) ;
 int nlmsg_parse_deprecated (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int nlmsg_parse_deprecated_strict (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int valid_bridge_getlink_req(const struct nlmsghdr *nlh,
        bool strict_check, u32 *filter_mask,
        struct netlink_ext_ack *extack)
{
 struct nlattr *tb[IFLA_MAX+1];
 int err, i;

 if (strict_check) {
  struct ifinfomsg *ifm;

  if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*ifm))) {
   NL_SET_ERR_MSG(extack, "Invalid header for bridge link dump");
   return -EINVAL;
  }

  ifm = nlmsg_data(nlh);
  if (ifm->__ifi_pad || ifm->ifi_type || ifm->ifi_flags ||
      ifm->ifi_change || ifm->ifi_index) {
   NL_SET_ERR_MSG(extack, "Invalid values in header for bridge link dump request");
   return -EINVAL;
  }

  err = nlmsg_parse_deprecated_strict(nlh,
          sizeof(struct ifinfomsg),
          tb, IFLA_MAX, ifla_policy,
          extack);
 } else {
  err = nlmsg_parse_deprecated(nlh, sizeof(struct ifinfomsg),
          tb, IFLA_MAX, ifla_policy,
          extack);
 }
 if (err < 0)
  return err;


 for (i = 0; i <= IFLA_MAX; ++i) {
  if (!tb[i])
   continue;

  switch (i) {
  case 128:
   *filter_mask = nla_get_u32(tb[i]);
   break;
  default:
   if (strict_check) {
    NL_SET_ERR_MSG(extack, "Unsupported attribute in bridge link dump request");
    return -EINVAL;
   }
  }
 }

 return 0;
}
