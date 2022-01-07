
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtgenmsg {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; scalar_t__ ifi_change; scalar_t__ ifi_flags; scalar_t__ ifi_type; scalar_t__ __ifi_pad; } ;


 int EINVAL ;
 int IFLA_MAX ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int ifla_policy ;
 struct ifinfomsg* nlmsg_data (struct nlmsghdr const*) ;
 int nlmsg_len (struct nlmsghdr const*) ;
 scalar_t__ nlmsg_msg_size (int) ;
 int nlmsg_parse_deprecated (struct nlmsghdr const*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;
 int nlmsg_parse_deprecated_strict (struct nlmsghdr const*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int rtnl_valid_dump_ifinfo_req(const struct nlmsghdr *nlh,
          bool strict_check, struct nlattr **tb,
          struct netlink_ext_ack *extack)
{
 int hdrlen;

 if (strict_check) {
  struct ifinfomsg *ifm;

  if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*ifm))) {
   NL_SET_ERR_MSG(extack, "Invalid header for link dump");
   return -EINVAL;
  }

  ifm = nlmsg_data(nlh);
  if (ifm->__ifi_pad || ifm->ifi_type || ifm->ifi_flags ||
      ifm->ifi_change) {
   NL_SET_ERR_MSG(extack, "Invalid values in header for link dump request");
   return -EINVAL;
  }
  if (ifm->ifi_index) {
   NL_SET_ERR_MSG(extack, "Filter by device index not supported for link dumps");
   return -EINVAL;
  }

  return nlmsg_parse_deprecated_strict(nlh, sizeof(*ifm), tb,
           IFLA_MAX, ifla_policy,
           extack);
 }
 hdrlen = nlmsg_len(nlh) < sizeof(struct ifinfomsg) ?
   sizeof(struct rtgenmsg) : sizeof(struct ifinfomsg);

 return nlmsg_parse_deprecated(nlh, hdrlen, tb, IFLA_MAX, ifla_policy,
          extack);
}
