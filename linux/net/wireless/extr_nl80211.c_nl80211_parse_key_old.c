
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_2__ {void* cipher; void* seq_len; void* seq; void* key_len; void* key; } ;
struct key_parse {int def; int defmgmt; int def_uni; int def_multi; void* type; TYPE_1__ p; int idx; } ;
struct genl_info {int extack; scalar_t__* attrs; } ;


 size_t NL80211_ATTR_KEY_CIPHER ;
 size_t NL80211_ATTR_KEY_DATA ;
 size_t NL80211_ATTR_KEY_DEFAULT ;
 size_t NL80211_ATTR_KEY_DEFAULT_MGMT ;
 size_t NL80211_ATTR_KEY_DEFAULT_TYPES ;
 size_t NL80211_ATTR_KEY_IDX ;
 size_t NL80211_ATTR_KEY_SEQ ;
 size_t NL80211_ATTR_KEY_TYPE ;
 size_t NL80211_KEY_DEFAULT_TYPE_MULTICAST ;
 size_t NL80211_KEY_DEFAULT_TYPE_UNICAST ;
 int NUM_NL80211_KEY_DEFAULT_TYPES ;
 int nl80211_key_default_policy ;
 void* nla_data (scalar_t__) ;
 void* nla_get_u32 (scalar_t__) ;
 int nla_get_u8 (scalar_t__) ;
 void* nla_len (scalar_t__) ;
 int nla_parse_nested_deprecated (struct nlattr**,int,scalar_t__,int ,int ) ;

__attribute__((used)) static int nl80211_parse_key_old(struct genl_info *info, struct key_parse *k)
{
 if (info->attrs[NL80211_ATTR_KEY_DATA]) {
  k->p.key = nla_data(info->attrs[NL80211_ATTR_KEY_DATA]);
  k->p.key_len = nla_len(info->attrs[NL80211_ATTR_KEY_DATA]);
 }

 if (info->attrs[NL80211_ATTR_KEY_SEQ]) {
  k->p.seq = nla_data(info->attrs[NL80211_ATTR_KEY_SEQ]);
  k->p.seq_len = nla_len(info->attrs[NL80211_ATTR_KEY_SEQ]);
 }

 if (info->attrs[NL80211_ATTR_KEY_IDX])
  k->idx = nla_get_u8(info->attrs[NL80211_ATTR_KEY_IDX]);

 if (info->attrs[NL80211_ATTR_KEY_CIPHER])
  k->p.cipher = nla_get_u32(info->attrs[NL80211_ATTR_KEY_CIPHER]);

 k->def = !!info->attrs[NL80211_ATTR_KEY_DEFAULT];
 k->defmgmt = !!info->attrs[NL80211_ATTR_KEY_DEFAULT_MGMT];

 if (k->def) {
  k->def_uni = 1;
  k->def_multi = 1;
 }
 if (k->defmgmt)
  k->def_multi = 1;

 if (info->attrs[NL80211_ATTR_KEY_TYPE])
  k->type = nla_get_u32(info->attrs[NL80211_ATTR_KEY_TYPE]);

 if (info->attrs[NL80211_ATTR_KEY_DEFAULT_TYPES]) {
  struct nlattr *kdt[NUM_NL80211_KEY_DEFAULT_TYPES];
  int err = nla_parse_nested_deprecated(kdt,
            NUM_NL80211_KEY_DEFAULT_TYPES - 1,
            info->attrs[NL80211_ATTR_KEY_DEFAULT_TYPES],
            nl80211_key_default_policy,
            info->extack);
  if (err)
   return err;

  k->def_uni = kdt[NL80211_KEY_DEFAULT_TYPE_UNICAST];
  k->def_multi = kdt[NL80211_KEY_DEFAULT_TYPE_MULTICAST];
 }

 return 0;
}
