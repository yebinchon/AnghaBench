
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_parse {int idx; int type; scalar_t__ def; scalar_t__ defmgmt; int def_multi; scalar_t__ def_uni; } ;
struct genl_info {scalar_t__* attrs; } ;


 int EINVAL ;
 int GENL_SET_ERR_MSG (struct genl_info*,char*) ;
 size_t NL80211_ATTR_KEY ;
 int memset (struct key_parse*,int ,int) ;
 int nl80211_parse_key_new (struct genl_info*,scalar_t__,struct key_parse*) ;
 int nl80211_parse_key_old (struct genl_info*,struct key_parse*) ;

__attribute__((used)) static int nl80211_parse_key(struct genl_info *info, struct key_parse *k)
{
 int err;

 memset(k, 0, sizeof(*k));
 k->idx = -1;
 k->type = -1;

 if (info->attrs[NL80211_ATTR_KEY])
  err = nl80211_parse_key_new(info, info->attrs[NL80211_ATTR_KEY], k);
 else
  err = nl80211_parse_key_old(info, k);

 if (err)
  return err;

 if (k->def && k->defmgmt) {
  GENL_SET_ERR_MSG(info, "key with def && defmgmt is invalid");
  return -EINVAL;
 }

 if (k->defmgmt) {
  if (k->def_uni || !k->def_multi) {
   GENL_SET_ERR_MSG(info, "defmgmt key must be mcast");
   return -EINVAL;
  }
 }

 if (k->idx != -1) {
  if (k->defmgmt) {
   if (k->idx < 4 || k->idx > 5) {
    GENL_SET_ERR_MSG(info,
       "defmgmt key idx not 4 or 5");
    return -EINVAL;
   }
  } else if (k->def) {
   if (k->idx < 0 || k->idx > 3) {
    GENL_SET_ERR_MSG(info, "def key idx not 0-3");
    return -EINVAL;
   }
  } else {
   if (k->idx < 0 || k->idx > 5) {
    GENL_SET_ERR_MSG(info, "key idx not 0-5");
    return -EINVAL;
   }
  }
 }

 return 0;
}
