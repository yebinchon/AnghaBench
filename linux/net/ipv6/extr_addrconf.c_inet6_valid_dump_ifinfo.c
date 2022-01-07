
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct netlink_ext_ack {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; scalar_t__ ifi_change; scalar_t__ ifi_flags; scalar_t__ ifi_type; scalar_t__ __ifi_pad; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 scalar_t__ nlmsg_attrlen (struct nlmsghdr const*,int) ;
 struct ifinfomsg* nlmsg_data (struct nlmsghdr const*) ;
 scalar_t__ nlmsg_msg_size (int) ;

__attribute__((used)) static int inet6_valid_dump_ifinfo(const struct nlmsghdr *nlh,
       struct netlink_ext_ack *extack)
{
 struct ifinfomsg *ifm;

 if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*ifm))) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid header for link dump request");
  return -EINVAL;
 }

 if (nlmsg_attrlen(nlh, sizeof(*ifm))) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid data after header");
  return -EINVAL;
 }

 ifm = nlmsg_data(nlh);
 if (ifm->__ifi_pad || ifm->ifi_type || ifm->ifi_flags ||
     ifm->ifi_change || ifm->ifi_index) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid values in header for dump request");
  return -EINVAL;
 }

 return 0;
}
