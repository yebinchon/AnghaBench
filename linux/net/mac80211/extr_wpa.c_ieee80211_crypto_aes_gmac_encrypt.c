
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
struct TYPE_5__ {scalar_t__ hw_key; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_tx_data {int skbs; struct ieee80211_key* key; } ;
struct ieee80211_mmie_16 {int length; int mic; int sequence_number; int key_id; int element_id; } ;
struct TYPE_7__ {int tfm; } ;
struct TYPE_8__ {TYPE_3__ aes_gmac; } ;
struct TYPE_6__ {int tx_pn; int keyidx; } ;
struct ieee80211_key {TYPE_4__ u; TYPE_2__ conf; } ;
struct ieee80211_hdr {int addr2; } ;
typedef int ieee80211_tx_result ;


 int ETH_ALEN ;
 int GMAC_AAD_LEN ;
 int GMAC_NONCE_LEN ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int TX_CONTINUE ;
 int TX_DROP ;
 scalar_t__ WARN_ON (int) ;
 int WLAN_EID_MMIE ;
 int atomic64_inc_return (int *) ;
 int bip_aad (struct sk_buff*,int *) ;
 int bip_ipn_set64 (int ,int ) ;
 int bip_ipn_swap (int *,int ) ;
 int cpu_to_le16 (int ) ;
 scalar_t__ ieee80211_aes_gmac (int ,int *,int *,scalar_t__,scalar_t__,int ) ;
 int memcpy (int *,int ,int) ;
 struct sk_buff* skb_peek (int *) ;
 struct ieee80211_mmie_16* skb_put (struct sk_buff*,int) ;
 int skb_queue_len (int *) ;
 int skb_tailroom (struct sk_buff*) ;

ieee80211_tx_result
ieee80211_crypto_aes_gmac_encrypt(struct ieee80211_tx_data *tx)
{
 struct sk_buff *skb;
 struct ieee80211_tx_info *info;
 struct ieee80211_key *key = tx->key;
 struct ieee80211_mmie_16 *mmie;
 struct ieee80211_hdr *hdr;
 u8 aad[GMAC_AAD_LEN];
 u64 pn64;
 u8 nonce[GMAC_NONCE_LEN];

 if (WARN_ON(skb_queue_len(&tx->skbs) != 1))
  return TX_DROP;

 skb = skb_peek(&tx->skbs);

 info = IEEE80211_SKB_CB(skb);

 if (info->control.hw_key)
  return TX_CONTINUE;

 if (WARN_ON(skb_tailroom(skb) < sizeof(*mmie)))
  return TX_DROP;

 mmie = skb_put(skb, sizeof(*mmie));
 mmie->element_id = WLAN_EID_MMIE;
 mmie->length = sizeof(*mmie) - 2;
 mmie->key_id = cpu_to_le16(key->conf.keyidx);


 pn64 = atomic64_inc_return(&key->conf.tx_pn);

 bip_ipn_set64(mmie->sequence_number, pn64);

 bip_aad(skb, aad);

 hdr = (struct ieee80211_hdr *)skb->data;
 memcpy(nonce, hdr->addr2, ETH_ALEN);
 bip_ipn_swap(nonce + ETH_ALEN, mmie->sequence_number);


 if (ieee80211_aes_gmac(key->u.aes_gmac.tfm, aad, nonce,
          skb->data + 24, skb->len - 24, mmie->mic) < 0)
  return TX_DROP;

 return TX_CONTINUE;
}
