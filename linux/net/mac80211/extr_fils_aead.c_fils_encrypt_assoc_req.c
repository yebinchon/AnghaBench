
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int data; int* len; } ;
struct TYPE_5__ {int* variable; int capab_info; } ;
struct TYPE_4__ {int* variable; int capab_info; } ;
struct TYPE_6__ {TYPE_2__ assoc_req; TYPE_1__ reassoc_req; } ;
struct ieee80211_mgmt {int* sa; int* da; TYPE_3__ u; int frame_control; } ;
struct ieee80211_mgd_assoc_data {int* fils_nonces; int fils_kek_len; int fils_kek; } ;


 int AES_BLOCK_SIZE ;
 int EINVAL ;
 size_t ETH_ALEN ;
 size_t FILS_NONCE_LEN ;
 int WLAN_EID_EXT_FILS_SESSION ;
 int aes_siv_encrypt (int ,int ,int*,size_t,int,int const**,size_t*,int*) ;
 int* cfg80211_find_ext_ie (int ,int*,int) ;
 scalar_t__ ieee80211_is_reassoc_req (int ) ;
 int skb_put (struct sk_buff*,int ) ;

int fils_encrypt_assoc_req(struct sk_buff *skb,
      struct ieee80211_mgd_assoc_data *assoc_data)
{
 struct ieee80211_mgmt *mgmt = (void *)skb->data;
 u8 *capab, *ies, *encr;
 const u8 *addr[5 + 1], *session;
 size_t len[5 + 1];
 size_t crypt_len;

 if (ieee80211_is_reassoc_req(mgmt->frame_control)) {
  capab = (u8 *)&mgmt->u.reassoc_req.capab_info;
  ies = mgmt->u.reassoc_req.variable;
 } else {
  capab = (u8 *)&mgmt->u.assoc_req.capab_info;
  ies = mgmt->u.assoc_req.variable;
 }

 session = cfg80211_find_ext_ie(WLAN_EID_EXT_FILS_SESSION,
           ies, skb->data + skb->len - ies);
 if (!session || session[1] != 1 + 8)
  return -EINVAL;

 encr = (u8 *)session + 2 + 1 + 8;




 addr[0] = mgmt->sa;
 len[0] = ETH_ALEN;

 addr[1] = mgmt->da;
 len[1] = ETH_ALEN;

 addr[2] = assoc_data->fils_nonces;
 len[2] = FILS_NONCE_LEN;

 addr[3] = &assoc_data->fils_nonces[FILS_NONCE_LEN];
 len[3] = FILS_NONCE_LEN;



 addr[4] = capab;
 len[4] = encr - capab;

 crypt_len = skb->data + skb->len - encr;
 skb_put(skb, AES_BLOCK_SIZE);
 return aes_siv_encrypt(assoc_data->fils_kek, assoc_data->fils_kek_len,
          encr, crypt_len, 5, addr, len, encr);
}
