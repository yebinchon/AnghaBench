
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ hw_key; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct ieee80211_tx_data {int skbs; struct ieee80211_key* key; } ;
struct ieee80211_mmie {int length; int mic; int sequence_number; int key_id; int element_id; } ;
struct TYPE_7__ {int tfm; } ;
struct TYPE_8__ {TYPE_3__ aes_cmac; } ;
struct TYPE_5__ {int flags; int tx_pn; int keyidx; } ;
struct ieee80211_key {TYPE_4__ u; TYPE_1__ conf; } ;
typedef int ieee80211_tx_result ;


 int IEEE80211_KEY_FLAG_GENERATE_MMIE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int TX_CONTINUE ;
 int TX_DROP ;
 scalar_t__ WARN_ON (int) ;
 int WLAN_EID_MMIE ;
 int atomic64_inc_return (int *) ;
 int bip_aad (struct sk_buff*,int *) ;
 int bip_ipn_set64 (int ,int ) ;
 int cpu_to_le16 (int ) ;
 int ieee80211_aes_cmac (int ,int *,scalar_t__,scalar_t__,int ) ;
 struct sk_buff* skb_peek (int *) ;
 struct ieee80211_mmie* skb_put (struct sk_buff*,int) ;
 int skb_queue_len (int *) ;
 int skb_tailroom (struct sk_buff*) ;

ieee80211_tx_result
ieee80211_crypto_aes_cmac_encrypt(struct ieee80211_tx_data *tx)
{
 struct sk_buff *skb;
 struct ieee80211_tx_info *info;
 struct ieee80211_key *key = tx->key;
 struct ieee80211_mmie *mmie;
 u8 aad[20];
 u64 pn64;

 if (WARN_ON(skb_queue_len(&tx->skbs) != 1))
  return TX_DROP;

 skb = skb_peek(&tx->skbs);

 info = IEEE80211_SKB_CB(skb);

 if (info->control.hw_key &&
     !(key->conf.flags & IEEE80211_KEY_FLAG_GENERATE_MMIE))
  return TX_CONTINUE;

 if (WARN_ON(skb_tailroom(skb) < sizeof(*mmie)))
  return TX_DROP;

 mmie = skb_put(skb, sizeof(*mmie));
 mmie->element_id = WLAN_EID_MMIE;
 mmie->length = sizeof(*mmie) - 2;
 mmie->key_id = cpu_to_le16(key->conf.keyidx);


 pn64 = atomic64_inc_return(&key->conf.tx_pn);

 bip_ipn_set64(mmie->sequence_number, pn64);

 if (info->control.hw_key)
  return TX_CONTINUE;

 bip_aad(skb, aad);




 ieee80211_aes_cmac(key->u.aes_cmac.tfm, aad,
      skb->data + 24, skb->len - 24, mmie->mic);

 return TX_CONTINUE;
}
