
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy_vendor_command {scalar_t__ policy; int maxattr; } ;
struct nlattr {int nla_type; } ;
struct netlink_ext_ack {int dummy; } ;


 int EINVAL ;
 int NLA_F_NESTED ;
 int NL_SET_ERR_MSG_ATTR (struct netlink_ext_ack*,struct nlattr*,char*) ;
 scalar_t__ VENDOR_CMD_RAW_DATA ;
 int nl80211_validate_nested (struct nlattr*,int ,scalar_t__,struct netlink_ext_ack*) ;

__attribute__((used)) static int nl80211_vendor_check_policy(const struct wiphy_vendor_command *vcmd,
           struct nlattr *attr,
           struct netlink_ext_ack *extack)
{
 if (vcmd->policy == VENDOR_CMD_RAW_DATA) {
  if (attr->nla_type & NLA_F_NESTED) {
   NL_SET_ERR_MSG_ATTR(extack, attr,
         "unexpected nested data");
   return -EINVAL;
  }

  return 0;
 }

 if (!(attr->nla_type & NLA_F_NESTED)) {
  NL_SET_ERR_MSG_ATTR(extack, attr, "expected nested data");
  return -EINVAL;
 }

 return nl80211_validate_nested(attr, vcmd->maxattr, vcmd->policy,
           extack);
}
