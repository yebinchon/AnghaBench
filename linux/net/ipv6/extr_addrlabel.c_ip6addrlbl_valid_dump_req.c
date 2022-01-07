
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct netlink_ext_ack {int dummy; } ;
struct ifaddrlblmsg {scalar_t__ ifal_seq; scalar_t__ ifal_index; scalar_t__ ifal_flags; scalar_t__ ifal_prefixlen; scalar_t__ __ifal_reserved; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 scalar_t__ nlmsg_attrlen (struct nlmsghdr const*,int) ;
 struct ifaddrlblmsg* nlmsg_data (struct nlmsghdr const*) ;
 scalar_t__ nlmsg_msg_size (int) ;

__attribute__((used)) static int ip6addrlbl_valid_dump_req(const struct nlmsghdr *nlh,
         struct netlink_ext_ack *extack)
{
 struct ifaddrlblmsg *ifal;

 if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*ifal))) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid header for address label dump request");
  return -EINVAL;
 }

 ifal = nlmsg_data(nlh);
 if (ifal->__ifal_reserved || ifal->ifal_prefixlen ||
     ifal->ifal_flags || ifal->ifal_index || ifal->ifal_seq) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid values in header for address label dump request");
  return -EINVAL;
 }

 if (nlmsg_attrlen(nlh, sizeof(*ifal))) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid data after header for address label dump request");
  return -EINVAL;
 }

 return 0;
}
