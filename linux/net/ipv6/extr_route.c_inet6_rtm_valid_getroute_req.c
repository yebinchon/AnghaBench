
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtmsg {int rtm_src_len; int rtm_dst_len; int rtm_flags; scalar_t__ rtm_type; scalar_t__ rtm_scope; scalar_t__ rtm_protocol; scalar_t__ rtm_table; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;





 int RTA_MAX ;




 int RTM_F_FIB_MATCH ;
 int netlink_strict_get_check (struct sk_buff*) ;
 struct rtmsg* nlmsg_data (struct nlmsghdr const*) ;
 scalar_t__ nlmsg_msg_size (int) ;
 int nlmsg_parse_deprecated (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int nlmsg_parse_deprecated_strict (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int rtm_ipv6_policy ;

__attribute__((used)) static int inet6_rtm_valid_getroute_req(struct sk_buff *skb,
     const struct nlmsghdr *nlh,
     struct nlattr **tb,
     struct netlink_ext_ack *extack)
{
 struct rtmsg *rtm;
 int i, err;

 if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*rtm))) {
  NL_SET_ERR_MSG_MOD(extack,
       "Invalid header for get route request");
  return -EINVAL;
 }

 if (!netlink_strict_get_check(skb))
  return nlmsg_parse_deprecated(nlh, sizeof(*rtm), tb, RTA_MAX,
           rtm_ipv6_policy, extack);

 rtm = nlmsg_data(nlh);
 if ((rtm->rtm_src_len && rtm->rtm_src_len != 128) ||
     (rtm->rtm_dst_len && rtm->rtm_dst_len != 128) ||
     rtm->rtm_table || rtm->rtm_protocol || rtm->rtm_scope ||
     rtm->rtm_type) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid values in header for get route request");
  return -EINVAL;
 }
 if (rtm->rtm_flags & ~RTM_F_FIB_MATCH) {
  NL_SET_ERR_MSG_MOD(extack,
       "Invalid flags for get route request");
  return -EINVAL;
 }

 err = nlmsg_parse_deprecated_strict(nlh, sizeof(*rtm), tb, RTA_MAX,
         rtm_ipv6_policy, extack);
 if (err)
  return err;

 if ((tb[129] && !rtm->rtm_src_len) ||
     (tb[135] && !rtm->rtm_dst_len)) {
  NL_SET_ERR_MSG_MOD(extack, "rtm_src_len and rtm_dst_len must be 128 for IPv6");
  return -EINVAL;
 }

 for (i = 0; i <= RTA_MAX; i++) {
  if (!tb[i])
   continue;

  switch (i) {
  case 129:
  case 135:
  case 134:
  case 131:
  case 132:
  case 128:
  case 130:
  case 136:
  case 133:
   break;
  default:
   NL_SET_ERR_MSG_MOD(extack, "Unsupported attribute in get route request");
   return -EINVAL;
  }
 }

 return 0;
}
