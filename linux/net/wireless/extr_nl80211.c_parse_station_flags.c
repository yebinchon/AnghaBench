
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct station_parameters {int sta_flags_mask; int sta_flags_set; } ;
struct nlattr {int dummy; } ;
struct nl80211_sta_flag_update {int mask; int set; } ;
struct genl_info {int extack; struct nlattr** attrs; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int BIT (int ) ;
 int EINVAL ;
 size_t NL80211_ATTR_STA_FLAGS ;
 size_t NL80211_ATTR_STA_FLAGS2 ;






 int NL80211_STA_FLAG_AUTHENTICATED ;
 int NL80211_STA_FLAG_AUTHORIZED ;
 int NL80211_STA_FLAG_MAX ;
 int NL80211_STA_FLAG_MAX_OLD_API ;
 int NL80211_STA_FLAG_MFP ;
 int NL80211_STA_FLAG_SHORT_PREAMBLE ;
 int NL80211_STA_FLAG_TDLS_PEER ;
 int NL80211_STA_FLAG_WME ;
 int __NL80211_STA_FLAG_INVALID ;
 struct nl80211_sta_flag_update* nla_data (struct nlattr*) ;
 scalar_t__ nla_parse_nested_deprecated (struct nlattr**,int,struct nlattr*,int ,int ) ;
 int sta_flags_policy ;

__attribute__((used)) static int parse_station_flags(struct genl_info *info,
          enum nl80211_iftype iftype,
          struct station_parameters *params)
{
 struct nlattr *flags[NL80211_STA_FLAG_MAX + 1];
 struct nlattr *nla;
 int flag;





 nla = info->attrs[NL80211_ATTR_STA_FLAGS2];
 if (nla) {
  struct nl80211_sta_flag_update *sta_flags;

  sta_flags = nla_data(nla);
  params->sta_flags_mask = sta_flags->mask;
  params->sta_flags_set = sta_flags->set;
  params->sta_flags_set &= params->sta_flags_mask;
  if ((params->sta_flags_mask |
       params->sta_flags_set) & BIT(__NL80211_STA_FLAG_INVALID))
   return -EINVAL;
  return 0;
 }



 nla = info->attrs[NL80211_ATTR_STA_FLAGS];
 if (!nla)
  return 0;

 if (nla_parse_nested_deprecated(flags, NL80211_STA_FLAG_MAX, nla, sta_flags_policy, info->extack))
  return -EINVAL;







 switch (iftype) {
 case 133:
 case 132:
 case 129:
  params->sta_flags_mask = BIT(NL80211_STA_FLAG_AUTHORIZED) |
      BIT(NL80211_STA_FLAG_SHORT_PREAMBLE) |
      BIT(NL80211_STA_FLAG_WME) |
      BIT(NL80211_STA_FLAG_MFP);
  break;
 case 130:
 case 128:
  params->sta_flags_mask = BIT(NL80211_STA_FLAG_AUTHORIZED) |
      BIT(NL80211_STA_FLAG_TDLS_PEER);
  break;
 case 131:
  params->sta_flags_mask = BIT(NL80211_STA_FLAG_AUTHENTICATED) |
      BIT(NL80211_STA_FLAG_MFP) |
      BIT(NL80211_STA_FLAG_AUTHORIZED);
  break;
 default:
  return -EINVAL;
 }

 for (flag = 1; flag <= NL80211_STA_FLAG_MAX; flag++) {
  if (flags[flag]) {
   params->sta_flags_set |= (1<<flag);


   if (flag > NL80211_STA_FLAG_MAX_OLD_API)
    return -EINVAL;
  }
 }

 return 0;
}
