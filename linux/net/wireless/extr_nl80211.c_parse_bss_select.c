
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int bss_select_support; } ;
struct nlattr {int dummy; } ;
struct nl80211_bss_select_rssi_adjust {int delta; int band; } ;
struct TYPE_3__ {int band; int delta; } ;
struct TYPE_4__ {TYPE_1__ adjust; int band_pref; } ;
struct cfg80211_bss_selection {size_t behaviour; TYPE_2__ param; } ;


 int BIT (size_t) ;
 int EINVAL ;
 size_t NL80211_BSS_SELECT_ATTR_BAND_PREF ;
 int NL80211_BSS_SELECT_ATTR_MAX ;
 size_t NL80211_BSS_SELECT_ATTR_RSSI ;
 size_t NL80211_BSS_SELECT_ATTR_RSSI_ADJUST ;
 size_t __NL80211_BSS_SELECT_ATTR_INVALID ;
 int is_band_valid (struct wiphy*,int ) ;
 int nl80211_bss_select_policy ;
 void* nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_ok (struct nlattr*,int ) ;
 int nla_parse_nested_deprecated (struct nlattr**,int,struct nlattr*,int ,int *) ;

__attribute__((used)) static int parse_bss_select(struct nlattr *nla, struct wiphy *wiphy,
       struct cfg80211_bss_selection *bss_select)
{
 struct nlattr *attr[NL80211_BSS_SELECT_ATTR_MAX + 1];
 struct nlattr *nest;
 int err;
 bool found = 0;
 int i;


 nest = nla_data(nla);
 if (!nla_ok(nest, nla_len(nest)))
  return -EINVAL;

 err = nla_parse_nested_deprecated(attr, NL80211_BSS_SELECT_ATTR_MAX,
       nest, nl80211_bss_select_policy,
       ((void*)0));
 if (err)
  return err;


 for (i = 0; i <= NL80211_BSS_SELECT_ATTR_MAX; i++) {
  if (attr[i]) {
   if (found)
    return -EINVAL;
   found = 1;
  }
 }

 bss_select->behaviour = __NL80211_BSS_SELECT_ATTR_INVALID;

 if (attr[NL80211_BSS_SELECT_ATTR_RSSI])
  bss_select->behaviour = NL80211_BSS_SELECT_ATTR_RSSI;

 if (attr[NL80211_BSS_SELECT_ATTR_BAND_PREF]) {
  bss_select->behaviour = NL80211_BSS_SELECT_ATTR_BAND_PREF;
  bss_select->param.band_pref =
   nla_get_u32(attr[NL80211_BSS_SELECT_ATTR_BAND_PREF]);
  if (!is_band_valid(wiphy, bss_select->param.band_pref))
   return -EINVAL;
 }

 if (attr[NL80211_BSS_SELECT_ATTR_RSSI_ADJUST]) {
  struct nl80211_bss_select_rssi_adjust *adj_param;

  adj_param = nla_data(attr[NL80211_BSS_SELECT_ATTR_RSSI_ADJUST]);
  bss_select->behaviour = NL80211_BSS_SELECT_ATTR_RSSI_ADJUST;
  bss_select->param.adjust.band = adj_param->band;
  bss_select->param.adjust.delta = adj_param->delta;
  if (!is_band_valid(wiphy, bss_select->param.adjust.band))
   return -EINVAL;
 }


 if (bss_select->behaviour == __NL80211_BSS_SELECT_ATTR_INVALID)
  return -EINVAL;

 if (!(wiphy->bss_select_support & BIT(bss_select->behaviour)))
  return -EINVAL;

 return 0;
}
