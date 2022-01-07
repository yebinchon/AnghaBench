
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct ieee80211_regdomain {unsigned int n_reg_rules; struct ieee80211_regdomain const* reg_rules; } const ieee80211_regdomain ;
struct ieee80211_reg_rule {int dummy; } ;


 int ENOMEM ;
 struct ieee80211_regdomain const* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct ieee80211_regdomain const* kzalloc (int ,int ) ;
 int memcpy (struct ieee80211_regdomain const*,struct ieee80211_regdomain const*,int) ;
 int reg_rules ;
 int struct_size (struct ieee80211_regdomain const*,int ,unsigned int) ;

__attribute__((used)) static const struct ieee80211_regdomain *
reg_copy_regd(const struct ieee80211_regdomain *src_regd)
{
 struct ieee80211_regdomain *regd;
 unsigned int i;

 regd = kzalloc(struct_size(regd, reg_rules, src_regd->n_reg_rules),
         GFP_KERNEL);
 if (!regd)
  return ERR_PTR(-ENOMEM);

 memcpy(regd, src_regd, sizeof(struct ieee80211_regdomain));

 for (i = 0; i < src_regd->n_reg_rules; i++)
  memcpy(&regd->reg_rules[i], &src_regd->reg_rules[i],
         sizeof(struct ieee80211_reg_rule));

 return regd;
}
