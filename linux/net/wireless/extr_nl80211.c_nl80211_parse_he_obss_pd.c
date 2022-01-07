
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct ieee80211_he_obss_pd {scalar_t__ min_offset; scalar_t__ max_offset; int enable; } ;


 int EINVAL ;
 int NL80211_HE_OBSS_PD_ATTR_MAX ;
 size_t NL80211_HE_OBSS_PD_ATTR_MAX_OFFSET ;
 size_t NL80211_HE_OBSS_PD_ATTR_MIN_OFFSET ;
 int he_obss_pd_policy ;
 void* nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ,int *) ;

__attribute__((used)) static int nl80211_parse_he_obss_pd(struct nlattr *attrs,
        struct ieee80211_he_obss_pd *he_obss_pd)
{
 struct nlattr *tb[NL80211_HE_OBSS_PD_ATTR_MAX + 1];
 int err;

 err = nla_parse_nested(tb, NL80211_HE_OBSS_PD_ATTR_MAX, attrs,
          he_obss_pd_policy, ((void*)0));
 if (err)
  return err;

 if (!tb[NL80211_HE_OBSS_PD_ATTR_MIN_OFFSET] ||
     !tb[NL80211_HE_OBSS_PD_ATTR_MAX_OFFSET])
  return -EINVAL;

 he_obss_pd->min_offset =
  nla_get_u32(tb[NL80211_HE_OBSS_PD_ATTR_MIN_OFFSET]);
 he_obss_pd->max_offset =
  nla_get_u32(tb[NL80211_HE_OBSS_PD_ATTR_MAX_OFFSET]);

 if (he_obss_pd->min_offset >= he_obss_pd->max_offset)
  return -EINVAL;

 he_obss_pd->enable = 1;

 return 0;
}
