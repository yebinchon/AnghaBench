
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
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__* hw_key; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct ieee80211_tx_data {TYPE_3__* local; struct ieee80211_key* key; } ;
struct TYPE_8__ {int tx_pn; } ;
struct ieee80211_key {TYPE_4__ conf; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_7__ {int wep_tx_ctx; } ;
struct TYPE_5__ {int flags; } ;


 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TKIP_ICV_LEN ;
 scalar_t__ IEEE80211_TKIP_IV_LEN ;
 scalar_t__ WARN_ON (int) ;
 int atomic64_inc_return (int *) ;
 unsigned int ieee80211_hdrlen (int ) ;
 int * ieee80211_tkip_add_iv (int *,TYPE_4__*,int ) ;
 int ieee80211_tkip_encrypt_data (int *,struct ieee80211_key*,struct sk_buff*,int *,int) ;
 int memmove (int *,int *,unsigned int) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int * skb_push (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static int tkip_encrypt_skb(struct ieee80211_tx_data *tx, struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 struct ieee80211_key *key = tx->key;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 unsigned int hdrlen;
 int len, tail;
 u64 pn;
 u8 *pos;

 if (info->control.hw_key &&
     !(info->control.hw_key->flags & IEEE80211_KEY_FLAG_GENERATE_IV) &&
     !(info->control.hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE)) {

  return 0;
 }

 hdrlen = ieee80211_hdrlen(hdr->frame_control);
 len = skb->len - hdrlen;

 if (info->control.hw_key)
  tail = 0;
 else
  tail = IEEE80211_TKIP_ICV_LEN;

 if (WARN_ON(skb_tailroom(skb) < tail ||
      skb_headroom(skb) < IEEE80211_TKIP_IV_LEN))
  return -1;

 pos = skb_push(skb, IEEE80211_TKIP_IV_LEN);
 memmove(pos, pos + IEEE80211_TKIP_IV_LEN, hdrlen);
 pos += hdrlen;


 if (info->control.hw_key &&
     (info->control.hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE))
  return 0;


 pn = atomic64_inc_return(&key->conf.tx_pn);
 pos = ieee80211_tkip_add_iv(pos, &key->conf, pn);


 if (info->control.hw_key)
  return 0;


 skb_put(skb, IEEE80211_TKIP_ICV_LEN);

 return ieee80211_tkip_encrypt_data(&tx->local->wep_tx_ctx,
        key, skb, pos, len);
}
