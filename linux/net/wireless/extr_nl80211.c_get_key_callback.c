
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct key_params {scalar_t__ cipher; scalar_t__ seq; int seq_len; scalar_t__ key; int key_len; } ;
struct get_key_cookie {int error; int msg; int idx; } ;


 int NL80211_ATTR_KEY ;
 int NL80211_ATTR_KEY_CIPHER ;
 int NL80211_ATTR_KEY_DATA ;
 int NL80211_ATTR_KEY_SEQ ;
 int NL80211_KEY_CIPHER ;
 int NL80211_KEY_DATA ;
 int NL80211_KEY_IDX ;
 int NL80211_KEY_SEQ ;
 int nla_nest_end (int ,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (int ,int ) ;
 scalar_t__ nla_put (int ,int ,int ,scalar_t__) ;
 scalar_t__ nla_put_u32 (int ,int ,scalar_t__) ;
 scalar_t__ nla_put_u8 (int ,int ,int ) ;

__attribute__((used)) static void get_key_callback(void *c, struct key_params *params)
{
 struct nlattr *key;
 struct get_key_cookie *cookie = c;

 if ((params->key &&
      nla_put(cookie->msg, NL80211_ATTR_KEY_DATA,
       params->key_len, params->key)) ||
     (params->seq &&
      nla_put(cookie->msg, NL80211_ATTR_KEY_SEQ,
       params->seq_len, params->seq)) ||
     (params->cipher &&
      nla_put_u32(cookie->msg, NL80211_ATTR_KEY_CIPHER,
    params->cipher)))
  goto nla_put_failure;

 key = nla_nest_start_noflag(cookie->msg, NL80211_ATTR_KEY);
 if (!key)
  goto nla_put_failure;

 if ((params->key &&
      nla_put(cookie->msg, NL80211_KEY_DATA,
       params->key_len, params->key)) ||
     (params->seq &&
      nla_put(cookie->msg, NL80211_KEY_SEQ,
       params->seq_len, params->seq)) ||
     (params->cipher &&
      nla_put_u32(cookie->msg, NL80211_KEY_CIPHER,
    params->cipher)))
  goto nla_put_failure;

 if (nla_put_u8(cookie->msg, NL80211_KEY_IDX, cookie->idx))
  goto nla_put_failure;

 nla_nest_end(cookie->msg, key);

 return;
 nla_put_failure:
 cookie->error = 1;
}
