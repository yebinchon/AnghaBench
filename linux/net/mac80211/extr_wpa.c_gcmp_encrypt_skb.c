
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_8__ {TYPE_2__* hw_key; } ;
struct ieee80211_tx_info {TYPE_3__ control; } ;
struct ieee80211_tx_data {struct ieee80211_key* key; } ;
struct TYPE_9__ {int tfm; } ;
struct TYPE_10__ {TYPE_4__ gcmp; } ;
struct TYPE_6__ {int keyidx; int tx_pn; } ;
struct ieee80211_key {TYPE_5__ u; TYPE_1__ conf; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_7__ {int flags; } ;


 int AES_BLOCK_SIZE ;
 int GCM_AAD_LEN ;
 scalar_t__ IEEE80211_GCMP_HDR_LEN ;
 int IEEE80211_GCMP_MIC_LEN ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_GENERATE_IV_MGMT ;
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ WARN_ON (int) ;
 int atomic64_inc_return (int *) ;
 int gcmp_pn2hdr (int*,int*,int ) ;
 int gcmp_special_blocks (struct sk_buff*,int*,int*,int*) ;
 int ieee80211_aes_gcm_encrypt (int ,int*,int*,int*,int,int ) ;
 int ieee80211_hdrlen (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 int memmove (int*,int*,int) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;
 int* skb_push (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_set_network_header (struct sk_buff*,scalar_t__) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static int gcmp_encrypt_skb(struct ieee80211_tx_data *tx, struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct ieee80211_key *key = tx->key;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 int hdrlen, len, tail;
 u8 *pos;
 u8 pn[6];
 u64 pn64;
 u8 aad[GCM_AAD_LEN];
 u8 j_0[AES_BLOCK_SIZE];

 if (info->control.hw_key &&
     !(info->control.hw_key->flags & IEEE80211_KEY_FLAG_GENERATE_IV) &&
     !(info->control.hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE) &&
     !((info->control.hw_key->flags &
        IEEE80211_KEY_FLAG_GENERATE_IV_MGMT) &&
       ieee80211_is_mgmt(hdr->frame_control))) {



  return 0;
 }

 hdrlen = ieee80211_hdrlen(hdr->frame_control);
 len = skb->len - hdrlen;

 if (info->control.hw_key)
  tail = 0;
 else
  tail = IEEE80211_GCMP_MIC_LEN;

 if (WARN_ON(skb_tailroom(skb) < tail ||
      skb_headroom(skb) < IEEE80211_GCMP_HDR_LEN))
  return -1;

 pos = skb_push(skb, IEEE80211_GCMP_HDR_LEN);
 memmove(pos, pos + IEEE80211_GCMP_HDR_LEN, hdrlen);
 skb_set_network_header(skb, skb_network_offset(skb) +
        IEEE80211_GCMP_HDR_LEN);


 if (info->control.hw_key &&
     (info->control.hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE))
  return 0;

 hdr = (struct ieee80211_hdr *)pos;
 pos += hdrlen;

 pn64 = atomic64_inc_return(&key->conf.tx_pn);

 pn[5] = pn64;
 pn[4] = pn64 >> 8;
 pn[3] = pn64 >> 16;
 pn[2] = pn64 >> 24;
 pn[1] = pn64 >> 32;
 pn[0] = pn64 >> 40;

 gcmp_pn2hdr(pos, pn, key->conf.keyidx);


 if (info->control.hw_key)
  return 0;

 pos += IEEE80211_GCMP_HDR_LEN;
 gcmp_special_blocks(skb, pn, j_0, aad);
 return ieee80211_aes_gcm_encrypt(key->u.gcmp.tfm, j_0, aad, pos, len,
      skb_put(skb, IEEE80211_GCMP_MIC_LEN));
}
