
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct genl_info {scalar_t__* attrs; int snd_portid; } ;
typedef enum nl80211_user_reg_hint_type { ____Placeholder_nl80211_user_reg_hint_type } nl80211_user_reg_hint_type ;


 int EINPROGRESS ;
 int EINVAL ;
 size_t NL80211_ATTR_REG_ALPHA2 ;
 size_t NL80211_ATTR_REG_INDOOR ;
 size_t NL80211_ATTR_SOCKET_OWNER ;
 size_t NL80211_ATTR_USER_REG_HINT_TYPE ;



 int cfg80211_regdomain ;
 char* nla_data (scalar_t__) ;
 int nla_get_u32 (scalar_t__) ;
 int rcu_access_pointer (int ) ;
 int regulatory_hint_indoor (int,int ) ;
 int regulatory_hint_user (char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nl80211_req_set_reg(struct sk_buff *skb, struct genl_info *info)
{
 char *data = ((void*)0);
 bool is_indoor;
 enum nl80211_user_reg_hint_type user_reg_hint_type;
 u32 owner_nlportid;







 if (unlikely(!rcu_access_pointer(cfg80211_regdomain)))
  return -EINPROGRESS;

 if (info->attrs[NL80211_ATTR_USER_REG_HINT_TYPE])
  user_reg_hint_type =
    nla_get_u32(info->attrs[NL80211_ATTR_USER_REG_HINT_TYPE]);
 else
  user_reg_hint_type = 128;

 switch (user_reg_hint_type) {
 case 128:
 case 130:
  if (!info->attrs[NL80211_ATTR_REG_ALPHA2])
   return -EINVAL;

  data = nla_data(info->attrs[NL80211_ATTR_REG_ALPHA2]);
  return regulatory_hint_user(data, user_reg_hint_type);
 case 129:
  if (info->attrs[NL80211_ATTR_SOCKET_OWNER]) {
   owner_nlportid = info->snd_portid;
   is_indoor = !!info->attrs[NL80211_ATTR_REG_INDOOR];
  } else {
   owner_nlportid = 0;
   is_indoor = 1;
  }

  return regulatory_hint_indoor(is_indoor, owner_nlportid);
 default:
  return -EINVAL;
 }
}
