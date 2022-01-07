
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct netlink_ext_ack {int dummy; } ;
struct br_port_msg {scalar_t__ ifindex; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 scalar_t__ nlmsg_attrlen (struct nlmsghdr const*,int) ;
 struct br_port_msg* nlmsg_data (struct nlmsghdr const*) ;
 scalar_t__ nlmsg_msg_size (int) ;

__attribute__((used)) static int br_mdb_valid_dump_req(const struct nlmsghdr *nlh,
     struct netlink_ext_ack *extack)
{
 struct br_port_msg *bpm;

 if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*bpm))) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid header for mdb dump request");
  return -EINVAL;
 }

 bpm = nlmsg_data(nlh);
 if (bpm->ifindex) {
  NL_SET_ERR_MSG_MOD(extack, "Filtering by device index is not supported for mdb dump request");
  return -EINVAL;
 }
 if (nlmsg_attrlen(nlh, sizeof(*bpm))) {
  NL_SET_ERR_MSG(extack, "Invalid data after header in mdb dump request");
  return -EINVAL;
 }

 return 0;
}
