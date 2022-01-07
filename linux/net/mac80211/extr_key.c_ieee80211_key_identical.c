
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
struct TYPE_4__ {int keylen; scalar_t__ cipher; int flags; int * key; } ;
struct ieee80211_key {TYPE_2__ conf; } ;


 int IEEE80211_KEY_FLAG_PAIRWISE ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 int WLAN_KEY_LEN_TKIP ;
 int crypto_memneq (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static bool ieee80211_key_identical(struct ieee80211_sub_if_data *sdata,
        struct ieee80211_key *old,
        struct ieee80211_key *new)
{
 u8 tkip_old[WLAN_KEY_LEN_TKIP], tkip_new[WLAN_KEY_LEN_TKIP];
 u8 *tk_old, *tk_new;

 if (!old || new->conf.keylen != old->conf.keylen)
  return 0;

 tk_old = old->conf.key;
 tk_new = new->conf.key;






 if (sdata->vif.type == NL80211_IFTYPE_STATION &&
     new->conf.cipher == WLAN_CIPHER_SUITE_TKIP &&
     new->conf.keylen == WLAN_KEY_LEN_TKIP &&
     !(new->conf.flags & IEEE80211_KEY_FLAG_PAIRWISE)) {
  memcpy(tkip_old, tk_old, WLAN_KEY_LEN_TKIP);
  memcpy(tkip_new, tk_new, WLAN_KEY_LEN_TKIP);
  memset(tkip_old + NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY, 0, 8);
  memset(tkip_new + NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY, 0, 8);
  tk_old = tkip_old;
  tk_new = tkip_new;
 }

 return !crypto_memneq(tk_old, tk_new, new->conf.keylen);
}
