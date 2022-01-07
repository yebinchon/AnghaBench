
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_2__* hw_key; } ;
struct ieee80211_tx_info {TYPE_3__ control; } ;
struct ieee80211_tx_data {struct ieee80211_key* key; } ;
struct TYPE_4__ {scalar_t__ iv_len; } ;
struct ieee80211_key {TYPE_1__ conf; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int ieee80211_tx_result ;
struct TYPE_5__ {int flags; } ;


 int GFP_ATOMIC ;
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int TX_CONTINUE ;
 int TX_DROP ;
 int ieee80211_hdrlen (int ) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,scalar_t__,int ,int ) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 scalar_t__* skb_push (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ieee80211_tx_result
ieee80211_crypto_cs_encrypt(struct ieee80211_tx_data *tx,
       struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct ieee80211_key *key = tx->key;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 int hdrlen;
 u8 *pos, iv_len = key->conf.iv_len;

 if (info->control.hw_key &&
     !(info->control.hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE)) {

  return TX_CONTINUE;
 }

 if (unlikely(skb_headroom(skb) < iv_len &&
       pskb_expand_head(skb, iv_len, 0, GFP_ATOMIC)))
  return TX_DROP;

 hdrlen = ieee80211_hdrlen(hdr->frame_control);

 pos = skb_push(skb, iv_len);
 memmove(pos, pos + iv_len, hdrlen);

 return TX_CONTINUE;
}
