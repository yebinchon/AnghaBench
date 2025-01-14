
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct lib80211_tkip_data {int tx_phase1_done; int tx_iv32; scalar_t__ tx_iv16; int key_idx; int tx_ttak; int key; } ;
struct ieee80211_hdr {int addr2; } ;


 scalar_t__ TKIP_HDR_LEN ;
 int memmove (void**,void**,int) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 void** skb_push (struct sk_buff*,scalar_t__) ;
 int tkip_mixing_phase1 (int ,int ,int ,int) ;
 int tkip_mixing_phase2 (void**,int ,int ,scalar_t__) ;

__attribute__((used)) static int lib80211_tkip_hdr(struct sk_buff *skb, int hdr_len,
         u8 * rc4key, int keylen, void *priv)
{
 struct lib80211_tkip_data *tkey = priv;
 u8 *pos;
 struct ieee80211_hdr *hdr;

 hdr = (struct ieee80211_hdr *)skb->data;

 if (skb_headroom(skb) < TKIP_HDR_LEN || skb->len < hdr_len)
  return -1;

 if (rc4key == ((void*)0) || keylen < 16)
  return -1;

 if (!tkey->tx_phase1_done) {
  tkip_mixing_phase1(tkey->tx_ttak, tkey->key, hdr->addr2,
       tkey->tx_iv32);
  tkey->tx_phase1_done = 1;
 }
 tkip_mixing_phase2(rc4key, tkey->key, tkey->tx_ttak, tkey->tx_iv16);

 pos = skb_push(skb, TKIP_HDR_LEN);
 memmove(pos, pos + TKIP_HDR_LEN, hdr_len);
 pos += hdr_len;

 *pos++ = *rc4key;
 *pos++ = *(rc4key + 1);
 *pos++ = *(rc4key + 2);
 *pos++ = (tkey->key_idx << 6) | (1 << 5) ;
 *pos++ = tkey->tx_iv32 & 0xff;
 *pos++ = (tkey->tx_iv32 >> 8) & 0xff;
 *pos++ = (tkey->tx_iv32 >> 16) & 0xff;
 *pos++ = (tkey->tx_iv32 >> 24) & 0xff;

 tkey->tx_iv16++;
 if (tkey->tx_iv16 == 0) {
  tkey->tx_phase1_done = 0;
  tkey->tx_iv32++;
 }

 return TKIP_HDR_LEN;
}
