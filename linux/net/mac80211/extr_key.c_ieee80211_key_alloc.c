
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ieee80211_mmie_16 {int dummy; } ;
struct ieee80211_mmie {int dummy; } ;
struct TYPE_18__ {int cipher; int keyidx; size_t keylen; int icv_len; int key; int iv_len; scalar_t__ flags; } ;
struct TYPE_13__ {int ** rx_pn; } ;
struct TYPE_12__ {void* tfm; int ** rx_pn; } ;
struct TYPE_11__ {void* tfm; int * rx_pn; } ;
struct TYPE_10__ {void* tfm; int * rx_pn; } ;
struct TYPE_16__ {void* tfm; int ** rx_pn; } ;
struct TYPE_15__ {int txlock; TYPE_5__* rx; } ;
struct TYPE_17__ {TYPE_4__ gen; TYPE_3__ gcmp; TYPE_2__ aes_gmac; TYPE_1__ aes_cmac; TYPE_7__ ccmp; TYPE_6__ tkip; } ;
struct ieee80211_key {int list; TYPE_9__ conf; scalar_t__ flags; TYPE_8__ u; } ;
struct ieee80211_cipher_scheme {size_t pn_len; int mic_len; int hdr_len; } ;
struct TYPE_14__ {int iv16; int iv32; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ieee80211_key* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IEEE80211_CCMP_256_HDR_LEN ;
 void* IEEE80211_CCMP_256_MIC_LEN ;
 int IEEE80211_CCMP_256_PN_LEN ;
 int IEEE80211_CCMP_HDR_LEN ;
 void* IEEE80211_CCMP_MIC_LEN ;
 int IEEE80211_CCMP_PN_LEN ;
 int IEEE80211_CMAC_PN_LEN ;
 int IEEE80211_GCMP_HDR_LEN ;
 int IEEE80211_GCMP_MIC_LEN ;
 int IEEE80211_GCMP_PN_LEN ;
 int IEEE80211_GMAC_PN_LEN ;
 int IEEE80211_NUM_TIDS ;
 int IEEE80211_TKIP_ICV_LEN ;
 int IEEE80211_TKIP_IV_LEN ;
 int IEEE80211_WEP_ICV_LEN ;
 int IEEE80211_WEP_IV_LEN ;
 int INIT_LIST_HEAD (int *) ;
 int IS_ERR (void*) ;
 scalar_t__ KEY_FLAG_CIPHER_SCHEME ;
 int NUM_DEFAULT_KEYS ;
 int NUM_DEFAULT_MGMT_KEYS ;
 int PTR_ERR (void*) ;
 scalar_t__ WARN_ON (int) ;
 int get_unaligned_le16 (int const*) ;
 int get_unaligned_le32 (int const*) ;
 void* ieee80211_aes_cmac_key_setup (int const*,size_t) ;
 void* ieee80211_aes_gcm_key_setup_encrypt (int const*,size_t) ;
 void* ieee80211_aes_gmac_key_setup (int const*,size_t) ;
 void* ieee80211_aes_key_setup_encrypt (int const*,size_t,void*) ;
 int kfree (struct ieee80211_key*) ;
 struct ieee80211_key* kzalloc (int,int ) ;
 int memcpy (int ,int const*,size_t) ;
 int spin_lock_init (int *) ;

struct ieee80211_key *
ieee80211_key_alloc(u32 cipher, int idx, size_t key_len,
      const u8 *key_data,
      size_t seq_len, const u8 *seq,
      const struct ieee80211_cipher_scheme *cs)
{
 struct ieee80211_key *key;
 int i, j, err;

 if (WARN_ON(idx < 0 || idx >= NUM_DEFAULT_KEYS + NUM_DEFAULT_MGMT_KEYS))
  return ERR_PTR(-EINVAL);

 key = kzalloc(sizeof(struct ieee80211_key) + key_len, GFP_KERNEL);
 if (!key)
  return ERR_PTR(-ENOMEM);





 key->conf.flags = 0;
 key->flags = 0;

 key->conf.cipher = cipher;
 key->conf.keyidx = idx;
 key->conf.keylen = key_len;
 switch (cipher) {
 case 128:
 case 129:
  key->conf.iv_len = IEEE80211_WEP_IV_LEN;
  key->conf.icv_len = IEEE80211_WEP_ICV_LEN;
  break;
 case 130:
  key->conf.iv_len = IEEE80211_TKIP_IV_LEN;
  key->conf.icv_len = IEEE80211_TKIP_ICV_LEN;
  if (seq) {
   for (i = 0; i < IEEE80211_NUM_TIDS; i++) {
    key->u.tkip.rx[i].iv32 =
     get_unaligned_le32(&seq[2]);
    key->u.tkip.rx[i].iv16 =
     get_unaligned_le16(seq);
   }
  }
  spin_lock_init(&key->u.tkip.txlock);
  break;
 case 134:
  key->conf.iv_len = IEEE80211_CCMP_HDR_LEN;
  key->conf.icv_len = IEEE80211_CCMP_MIC_LEN;
  if (seq) {
   for (i = 0; i < IEEE80211_NUM_TIDS + 1; i++)
    for (j = 0; j < IEEE80211_CCMP_PN_LEN; j++)
     key->u.ccmp.rx_pn[i][j] =
      seq[IEEE80211_CCMP_PN_LEN - j - 1];
  }




  key->u.ccmp.tfm = ieee80211_aes_key_setup_encrypt(
   key_data, key_len, IEEE80211_CCMP_MIC_LEN);
  if (IS_ERR(key->u.ccmp.tfm)) {
   err = PTR_ERR(key->u.ccmp.tfm);
   kfree(key);
   return ERR_PTR(err);
  }
  break;
 case 133:
  key->conf.iv_len = IEEE80211_CCMP_256_HDR_LEN;
  key->conf.icv_len = IEEE80211_CCMP_256_MIC_LEN;
  for (i = 0; seq && i < IEEE80211_NUM_TIDS + 1; i++)
   for (j = 0; j < IEEE80211_CCMP_256_PN_LEN; j++)
    key->u.ccmp.rx_pn[i][j] =
     seq[IEEE80211_CCMP_256_PN_LEN - j - 1];



  key->u.ccmp.tfm = ieee80211_aes_key_setup_encrypt(
   key_data, key_len, IEEE80211_CCMP_256_MIC_LEN);
  if (IS_ERR(key->u.ccmp.tfm)) {
   err = PTR_ERR(key->u.ccmp.tfm);
   kfree(key);
   return ERR_PTR(err);
  }
  break;
 case 138:
 case 137:
  key->conf.iv_len = 0;
  if (cipher == 138)
   key->conf.icv_len = sizeof(struct ieee80211_mmie);
  else
   key->conf.icv_len = sizeof(struct ieee80211_mmie_16);
  if (seq)
   for (j = 0; j < IEEE80211_CMAC_PN_LEN; j++)
    key->u.aes_cmac.rx_pn[j] =
     seq[IEEE80211_CMAC_PN_LEN - j - 1];




  key->u.aes_cmac.tfm =
   ieee80211_aes_cmac_key_setup(key_data, key_len);
  if (IS_ERR(key->u.aes_cmac.tfm)) {
   err = PTR_ERR(key->u.aes_cmac.tfm);
   kfree(key);
   return ERR_PTR(err);
  }
  break;
 case 136:
 case 135:
  key->conf.iv_len = 0;
  key->conf.icv_len = sizeof(struct ieee80211_mmie_16);
  if (seq)
   for (j = 0; j < IEEE80211_GMAC_PN_LEN; j++)
    key->u.aes_gmac.rx_pn[j] =
     seq[IEEE80211_GMAC_PN_LEN - j - 1];



  key->u.aes_gmac.tfm =
   ieee80211_aes_gmac_key_setup(key_data, key_len);
  if (IS_ERR(key->u.aes_gmac.tfm)) {
   err = PTR_ERR(key->u.aes_gmac.tfm);
   kfree(key);
   return ERR_PTR(err);
  }
  break;
 case 132:
 case 131:
  key->conf.iv_len = IEEE80211_GCMP_HDR_LEN;
  key->conf.icv_len = IEEE80211_GCMP_MIC_LEN;
  for (i = 0; seq && i < IEEE80211_NUM_TIDS + 1; i++)
   for (j = 0; j < IEEE80211_GCMP_PN_LEN; j++)
    key->u.gcmp.rx_pn[i][j] =
     seq[IEEE80211_GCMP_PN_LEN - j - 1];



  key->u.gcmp.tfm = ieee80211_aes_gcm_key_setup_encrypt(key_data,
              key_len);
  if (IS_ERR(key->u.gcmp.tfm)) {
   err = PTR_ERR(key->u.gcmp.tfm);
   kfree(key);
   return ERR_PTR(err);
  }
  break;
 default:
  if (cs) {
   if (seq_len && seq_len != cs->pn_len) {
    kfree(key);
    return ERR_PTR(-EINVAL);
   }

   key->conf.iv_len = cs->hdr_len;
   key->conf.icv_len = cs->mic_len;
   for (i = 0; i < IEEE80211_NUM_TIDS + 1; i++)
    for (j = 0; j < seq_len; j++)
     key->u.gen.rx_pn[i][j] =
       seq[seq_len - j - 1];
   key->flags |= KEY_FLAG_CIPHER_SCHEME;
  }
 }
 memcpy(key->conf.key, key_data, key_len);
 INIT_LIST_HEAD(&key->list);

 return key;
}
