
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ndmsg {int dummy; } ;
struct ifinfomsg {int ifi_index; } ;


 int EINVAL ;
 size_t IFLA_MASTER ;
 int IFLA_MAX ;
 int ifla_policy ;
 int nla_attr_size (int) ;
 int nla_get_u32 (struct nlattr*) ;
 struct ifinfomsg* nlmsg_data (struct nlmsghdr const*) ;
 int nlmsg_len (struct nlmsghdr const*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr const*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int valid_fdb_dump_legacy(const struct nlmsghdr *nlh,
     int *br_idx, int *brport_idx,
     struct netlink_ext_ack *extack)
{
 struct nlattr *tb[IFLA_MAX+1];
 int err;
 if (nlmsg_len(nlh) != sizeof(struct ndmsg) &&
     (nlmsg_len(nlh) != sizeof(struct ndmsg) +
      nla_attr_size(sizeof(u32)))) {
  struct ifinfomsg *ifm;

  err = nlmsg_parse_deprecated(nlh, sizeof(struct ifinfomsg),
          tb, IFLA_MAX, ifla_policy,
          extack);
  if (err < 0) {
   return -EINVAL;
  } else if (err == 0) {
   if (tb[IFLA_MASTER])
    *br_idx = nla_get_u32(tb[IFLA_MASTER]);
  }

  ifm = nlmsg_data(nlh);
  *brport_idx = ifm->ifi_index;
 }
 return 0;
}
