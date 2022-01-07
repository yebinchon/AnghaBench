
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtmsg {int rtm_src_len; int rtm_dst_len; scalar_t__ rtm_flags; scalar_t__ rtm_type; scalar_t__ rtm_scope; scalar_t__ rtm_protocol; scalar_t__ rtm_table; scalar_t__ rtm_tos; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;

 int RTA_MAX ;


 int netlink_strict_get_check (struct sk_buff*) ;
 struct rtmsg* nlmsg_data (struct nlmsghdr const*) ;
 scalar_t__ nlmsg_msg_size (int) ;
 int nlmsg_parse_deprecated (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int nlmsg_parse_deprecated_strict (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int rtm_ipv4_policy ;

__attribute__((used)) static int ipmr_rtm_valid_getroute_req(struct sk_buff *skb,
           const struct nlmsghdr *nlh,
           struct nlattr **tb,
           struct netlink_ext_ack *extack)
{
 struct rtmsg *rtm;
 int i, err;

 if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*rtm))) {
  NL_SET_ERR_MSG(extack, "ipv4: Invalid header for multicast route get request");
  return -EINVAL;
 }

 if (!netlink_strict_get_check(skb))
  return nlmsg_parse_deprecated(nlh, sizeof(*rtm), tb, RTA_MAX,
           rtm_ipv4_policy, extack);

 rtm = nlmsg_data(nlh);
 if ((rtm->rtm_src_len && rtm->rtm_src_len != 32) ||
     (rtm->rtm_dst_len && rtm->rtm_dst_len != 32) ||
     rtm->rtm_tos || rtm->rtm_table || rtm->rtm_protocol ||
     rtm->rtm_scope || rtm->rtm_type || rtm->rtm_flags) {
  NL_SET_ERR_MSG(extack, "ipv4: Invalid values in header for multicast route get request");
  return -EINVAL;
 }

 err = nlmsg_parse_deprecated_strict(nlh, sizeof(*rtm), tb, RTA_MAX,
         rtm_ipv4_policy, extack);
 if (err)
  return err;

 if ((tb[129] && !rtm->rtm_src_len) ||
     (tb[130] && !rtm->rtm_dst_len)) {
  NL_SET_ERR_MSG(extack, "ipv4: rtm_src_len and rtm_dst_len must be 32 for IPv4");
  return -EINVAL;
 }

 for (i = 0; i <= RTA_MAX; i++) {
  if (!tb[i])
   continue;

  switch (i) {
  case 129:
  case 130:
  case 128:
   break;
  default:
   NL_SET_ERR_MSG(extack, "ipv4: Unsupported attribute in multicast route get request");
   return -EINVAL;
  }
 }

 return 0;
}
