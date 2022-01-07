
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int data; int len; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {struct ieee80211_key* key; struct sk_buff* skb; } ;
struct ieee80211_mmie_16 {scalar_t__ element_id; int length; int mic; int sequence_number; } ;
struct TYPE_3__ {int * rx_pn; int icverrors; int tfm; int replays; } ;
struct TYPE_4__ {TYPE_1__ aes_gmac; } ;
struct ieee80211_key {TYPE_2__ u; } ;
struct ieee80211_hdr {int * addr2; int frame_control; } ;
typedef int ieee80211_rx_result ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int GMAC_AAD_LEN ;
 int GMAC_MIC_LEN ;
 int GMAC_NONCE_LEN ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RX_CONTINUE ;
 int RX_DROP_UNUSABLE ;
 int RX_FLAG_DECRYPTED ;
 scalar_t__ WLAN_EID_MMIE ;
 int bip_aad (struct sk_buff*,int *) ;
 int bip_ipn_swap (int *,int ) ;
 scalar_t__ crypto_memneq (int *,int ,int) ;
 scalar_t__ ieee80211_aes_gmac (int ,int *,int *,int,int,int *) ;
 int ieee80211_is_mgmt (int ) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int skb_trim (struct sk_buff*,int) ;

ieee80211_rx_result
ieee80211_crypto_aes_gmac_decrypt(struct ieee80211_rx_data *rx)
{
 struct sk_buff *skb = rx->skb;
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);
 struct ieee80211_key *key = rx->key;
 struct ieee80211_mmie_16 *mmie;
 u8 aad[GMAC_AAD_LEN], *mic, ipn[6], nonce[GMAC_NONCE_LEN];
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;

 if (!ieee80211_is_mgmt(hdr->frame_control))
  return RX_CONTINUE;



 if (skb->len < 24 + sizeof(*mmie))
  return RX_DROP_UNUSABLE;

 mmie = (struct ieee80211_mmie_16 *)
  (skb->data + skb->len - sizeof(*mmie));
 if (mmie->element_id != WLAN_EID_MMIE ||
     mmie->length != sizeof(*mmie) - 2)
  return RX_DROP_UNUSABLE;

 bip_ipn_swap(ipn, mmie->sequence_number);

 if (memcmp(ipn, key->u.aes_gmac.rx_pn, 6) <= 0) {
  key->u.aes_gmac.replays++;
  return RX_DROP_UNUSABLE;
 }

 if (!(status->flag & RX_FLAG_DECRYPTED)) {

  bip_aad(skb, aad);

  memcpy(nonce, hdr->addr2, ETH_ALEN);
  memcpy(nonce + ETH_ALEN, ipn, 6);

  mic = kmalloc(GMAC_MIC_LEN, GFP_ATOMIC);
  if (!mic)
   return RX_DROP_UNUSABLE;
  if (ieee80211_aes_gmac(key->u.aes_gmac.tfm, aad, nonce,
           skb->data + 24, skb->len - 24,
           mic) < 0 ||
      crypto_memneq(mic, mmie->mic, sizeof(mmie->mic))) {
   key->u.aes_gmac.icverrors++;
   kfree(mic);
   return RX_DROP_UNUSABLE;
  }
  kfree(mic);
 }

 memcpy(key->u.aes_gmac.rx_pn, ipn, 6);


 skb_trim(skb, skb->len - sizeof(*mmie));

 return RX_CONTINUE;
}
