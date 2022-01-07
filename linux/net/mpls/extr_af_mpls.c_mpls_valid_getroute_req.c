
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtmsg {int rtm_dst_len; int rtm_flags; scalar_t__ rtm_type; scalar_t__ rtm_scope; scalar_t__ rtm_protocol; scalar_t__ rtm_table; scalar_t__ rtm_tos; scalar_t__ rtm_src_len; } ;
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
 int rtm_mpls_policy ;

__attribute__((used)) static int mpls_valid_getroute_req(struct sk_buff *skb,
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
           rtm_mpls_policy, extack);

 rtm = nlmsg_data(nlh);
 if ((rtm->rtm_dst_len && rtm->rtm_dst_len != 20) ||
     rtm->rtm_src_len || rtm->rtm_tos || rtm->rtm_table ||
     rtm->rtm_protocol || rtm->rtm_scope || rtm->rtm_type) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid values in header for get route request");
  return -EINVAL;
 }
 if (rtm->rtm_flags & ~RTM_F_FIB_MATCH) {
  NL_SET_ERR_MSG_MOD(extack,
       "Invalid flags for get route request");
  return -EINVAL;
 }

 err = nlmsg_parse_deprecated_strict(nlh, sizeof(*rtm), tb, RTA_MAX,
         rtm_mpls_policy, extack);
 if (err)
  return err;

 if ((tb[129] || tb[128]) && !rtm->rtm_dst_len) {
  NL_SET_ERR_MSG_MOD(extack, "rtm_dst_len must be 20 for MPLS");
  return -EINVAL;
 }

 for (i = 0; i <= RTA_MAX; i++) {
  if (!tb[i])
   continue;

  switch (i) {
  case 129:
  case 128:
   break;
  default:
   NL_SET_ERR_MSG_MOD(extack, "Unsupported attribute in get route request");
   return -EINVAL;
  }
 }

 return 0;
}
