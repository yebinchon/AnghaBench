
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct netlink_ext_ack {int dummy; } ;
struct fib_rule_hdr {scalar_t__ flags; scalar_t__ action; scalar_t__ res2; scalar_t__ res1; scalar_t__ table; scalar_t__ tos; scalar_t__ src_len; scalar_t__ dst_len; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 scalar_t__ nlmsg_attrlen (struct nlmsghdr const*,int) ;
 struct fib_rule_hdr* nlmsg_data (struct nlmsghdr const*) ;
 scalar_t__ nlmsg_msg_size (int) ;

__attribute__((used)) static int fib_valid_dumprule_req(const struct nlmsghdr *nlh,
       struct netlink_ext_ack *extack)
{
 struct fib_rule_hdr *frh;

 if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*frh))) {
  NL_SET_ERR_MSG(extack, "Invalid header for fib rule dump request");
  return -EINVAL;
 }

 frh = nlmsg_data(nlh);
 if (frh->dst_len || frh->src_len || frh->tos || frh->table ||
     frh->res1 || frh->res2 || frh->action || frh->flags) {
  NL_SET_ERR_MSG(extack,
          "Invalid values in header for fib rule dump request");
  return -EINVAL;
 }

 if (nlmsg_attrlen(nlh, sizeof(*frh))) {
  NL_SET_ERR_MSG(extack, "Invalid data after header in fib rule dump request");
  return -EINVAL;
 }

 return 0;
}
