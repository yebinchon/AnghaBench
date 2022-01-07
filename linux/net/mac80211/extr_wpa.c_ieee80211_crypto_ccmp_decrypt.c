
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int data; int len; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {int security_idx; int sta; struct sk_buff* skb; struct ieee80211_key* key; } ;
struct TYPE_3__ {int * rx_pn; int tfm; int replays; } ;
struct TYPE_4__ {TYPE_1__ ccmp; } ;
struct ieee80211_key {TYPE_2__ u; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int ieee80211_rx_result ;


 int AES_BLOCK_SIZE ;
 int IEEE80211_CCMP_HDR_LEN ;
 int IEEE80211_CCMP_PN_LEN ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RX_CONTINUE ;
 int RX_DROP_UNUSABLE ;
 int RX_FLAG_ALLOW_SAME_PN ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_MIC_STRIPPED ;
 int RX_FLAG_PN_VALIDATED ;
 int ccmp_hdr2pn (int *,int) ;
 int ccmp_special_blocks (struct sk_buff*,int *,int *,int *) ;
 scalar_t__ ieee80211_aes_ccm_decrypt (int ,int *,int *,int,int,int) ;
 int ieee80211_hdrlen (int ) ;
 int ieee80211_is_data (int ) ;
 int ieee80211_is_robust_mgmt_frame (struct sk_buff*) ;
 int memcmp (int *,int ,int) ;
 int memcpy (int ,int *,int) ;
 int memmove (int,int,int) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ pskb_trim (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;

ieee80211_rx_result
ieee80211_crypto_ccmp_decrypt(struct ieee80211_rx_data *rx,
         unsigned int mic_len)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)rx->skb->data;
 int hdrlen;
 struct ieee80211_key *key = rx->key;
 struct sk_buff *skb = rx->skb;
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);
 u8 pn[IEEE80211_CCMP_PN_LEN];
 int data_len;
 int queue;

 hdrlen = ieee80211_hdrlen(hdr->frame_control);

 if (!ieee80211_is_data(hdr->frame_control) &&
     !ieee80211_is_robust_mgmt_frame(skb))
  return RX_CONTINUE;

 if (status->flag & RX_FLAG_DECRYPTED) {
  if (!pskb_may_pull(rx->skb, hdrlen + IEEE80211_CCMP_HDR_LEN))
   return RX_DROP_UNUSABLE;
  if (status->flag & RX_FLAG_MIC_STRIPPED)
   mic_len = 0;
 } else {
  if (skb_linearize(rx->skb))
   return RX_DROP_UNUSABLE;
 }

 data_len = skb->len - hdrlen - IEEE80211_CCMP_HDR_LEN - mic_len;
 if (!rx->sta || data_len < 0)
  return RX_DROP_UNUSABLE;

 if (!(status->flag & RX_FLAG_PN_VALIDATED)) {
  int res;

  ccmp_hdr2pn(pn, skb->data + hdrlen);

  queue = rx->security_idx;

  res = memcmp(pn, key->u.ccmp.rx_pn[queue],
        IEEE80211_CCMP_PN_LEN);
  if (res < 0 ||
      (!res && !(status->flag & RX_FLAG_ALLOW_SAME_PN))) {
   key->u.ccmp.replays++;
   return RX_DROP_UNUSABLE;
  }

  if (!(status->flag & RX_FLAG_DECRYPTED)) {
   u8 aad[2 * AES_BLOCK_SIZE];
   u8 b_0[AES_BLOCK_SIZE];

   ccmp_special_blocks(skb, pn, b_0, aad);

   if (ieee80211_aes_ccm_decrypt(
        key->u.ccmp.tfm, b_0, aad,
        skb->data + hdrlen + IEEE80211_CCMP_HDR_LEN,
        data_len,
        skb->data + skb->len - mic_len))
    return RX_DROP_UNUSABLE;
  }

  memcpy(key->u.ccmp.rx_pn[queue], pn, IEEE80211_CCMP_PN_LEN);
 }


 if (pskb_trim(skb, skb->len - mic_len))
  return RX_DROP_UNUSABLE;
 memmove(skb->data + IEEE80211_CCMP_HDR_LEN, skb->data, hdrlen);
 skb_pull(skb, IEEE80211_CCMP_HDR_LEN);

 return RX_CONTINUE;
}
