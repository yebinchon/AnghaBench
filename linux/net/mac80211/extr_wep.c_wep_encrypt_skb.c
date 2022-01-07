
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_tx_data {TYPE_3__* key; int local; } ;
struct ieee80211_key_conf {int flags; } ;
struct TYPE_5__ {int keyidx; int keylen; int key; } ;
struct TYPE_6__ {TYPE_2__ conf; } ;


 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int ieee80211_wep_add_iv (int ,struct sk_buff*,int ,int ) ;
 scalar_t__ ieee80211_wep_encrypt (int ,struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int wep_encrypt_skb(struct ieee80211_tx_data *tx, struct sk_buff *skb)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ieee80211_key_conf *hw_key = info->control.hw_key;

 if (!hw_key) {
  if (ieee80211_wep_encrypt(tx->local, skb, tx->key->conf.key,
       tx->key->conf.keylen,
       tx->key->conf.keyidx))
   return -1;
 } else if ((hw_key->flags & IEEE80211_KEY_FLAG_GENERATE_IV) ||
     (hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE)) {
  if (!ieee80211_wep_add_iv(tx->local, skb,
       tx->key->conf.keylen,
       tx->key->conf.keyidx))
   return -1;
 }

 return 0;
}
