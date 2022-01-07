
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; int * data; } ;
struct TYPE_6__ {int * hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct ieee80211_tx_data {TYPE_4__* key; TYPE_1__* local; struct sk_buff* skb; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int ieee80211_tx_result ;
struct TYPE_7__ {scalar_t__ cipher; int flags; int * key; } ;
struct TYPE_8__ {TYPE_3__ conf; } ;
struct TYPE_5__ {int hw; } ;


 int IEEE80211_KEY_FLAG_GENERATE_MMIC ;
 int IEEE80211_KEY_FLAG_PUT_MIC_SPACE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ IEEE80211_TKIP_ICV_LEN ;
 scalar_t__ IEEE80211_TKIP_IV_LEN ;
 int IEEE80211_TX_CTL_DONTFRAG ;
 int IEEE80211_TX_INTFL_TKIP_MIC_FAILURE ;
 int MICHAEL_MIC_LEN ;
 size_t NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY ;
 int SUPPORTS_TX_FRAG ;
 int TX_CONTINUE ;
 int TX_DROP ;
 scalar_t__ WARN (int,char*,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 unsigned int ieee80211_hdrlen (int ) ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 int ieee80211_is_data_present (int ) ;
 int memset (int *,int ,int) ;
 int michael_mic (int *,struct ieee80211_hdr*,int *,size_t,int *) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int * skb_put (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

ieee80211_tx_result
ieee80211_tx_h_michael_mic_add(struct ieee80211_tx_data *tx)
{
 u8 *data, *key, *mic;
 size_t data_len;
 unsigned int hdrlen;
 struct ieee80211_hdr *hdr;
 struct sk_buff *skb = tx->skb;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 int tail;

 hdr = (struct ieee80211_hdr *)skb->data;
 if (!tx->key || tx->key->conf.cipher != WLAN_CIPHER_SUITE_TKIP ||
     skb->len < 24 || !ieee80211_is_data_present(hdr->frame_control))
  return TX_CONTINUE;

 hdrlen = ieee80211_hdrlen(hdr->frame_control);
 if (skb->len < hdrlen)
  return TX_DROP;

 data = skb->data + hdrlen;
 data_len = skb->len - hdrlen;

 if (unlikely(info->flags & IEEE80211_TX_INTFL_TKIP_MIC_FAILURE)) {

  info->control.hw_key = ((void*)0);
 }

 if (info->control.hw_key &&
     (info->flags & IEEE80211_TX_CTL_DONTFRAG ||
      ieee80211_hw_check(&tx->local->hw, SUPPORTS_TX_FRAG)) &&
     !(tx->key->conf.flags & (IEEE80211_KEY_FLAG_GENERATE_MMIC |
         IEEE80211_KEY_FLAG_PUT_MIC_SPACE))) {

  return TX_CONTINUE;
 }

 tail = MICHAEL_MIC_LEN;
 if (!info->control.hw_key)
  tail += IEEE80211_TKIP_ICV_LEN;

 if (WARN(skb_tailroom(skb) < tail ||
   skb_headroom(skb) < IEEE80211_TKIP_IV_LEN,
   "mmic: not enough head/tail (%d/%d,%d/%d)\n",
   skb_headroom(skb), IEEE80211_TKIP_IV_LEN,
   skb_tailroom(skb), tail))
  return TX_DROP;

 mic = skb_put(skb, MICHAEL_MIC_LEN);

 if (tx->key->conf.flags & IEEE80211_KEY_FLAG_PUT_MIC_SPACE) {

  memset(mic, 0, MICHAEL_MIC_LEN);
  return TX_CONTINUE;
 }

 key = &tx->key->conf.key[NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY];
 michael_mic(key, hdr, data, data_len, mic);
 if (unlikely(info->flags & IEEE80211_TX_INTFL_TKIP_MIC_FAILURE))
  mic[0]++;

 return TX_CONTINUE;
}
