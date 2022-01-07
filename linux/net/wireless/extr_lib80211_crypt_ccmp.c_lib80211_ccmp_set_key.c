
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct lib80211_ccmp_data {int key_idx; int key_set; int key; struct crypto_aead* tfm; void** rx_pn; } ;
struct crypto_aead {int dummy; } ;


 int CCMP_MIC_LEN ;
 int CCMP_TK_LEN ;
 scalar_t__ crypto_aead_setauthsize (struct crypto_aead*,int ) ;
 scalar_t__ crypto_aead_setkey (struct crypto_aead*,int ,int) ;
 int memcpy (int ,void*,int) ;
 int memset (struct lib80211_ccmp_data*,int ,int) ;

__attribute__((used)) static int lib80211_ccmp_set_key(void *key, int len, u8 * seq, void *priv)
{
 struct lib80211_ccmp_data *data = priv;
 int keyidx;
 struct crypto_aead *tfm = data->tfm;

 keyidx = data->key_idx;
 memset(data, 0, sizeof(*data));
 data->key_idx = keyidx;
 data->tfm = tfm;
 if (len == CCMP_TK_LEN) {
  memcpy(data->key, key, CCMP_TK_LEN);
  data->key_set = 1;
  if (seq) {
   data->rx_pn[0] = seq[5];
   data->rx_pn[1] = seq[4];
   data->rx_pn[2] = seq[3];
   data->rx_pn[3] = seq[2];
   data->rx_pn[4] = seq[1];
   data->rx_pn[5] = seq[0];
  }
  if (crypto_aead_setauthsize(data->tfm, CCMP_MIC_LEN) ||
      crypto_aead_setkey(data->tfm, data->key, CCMP_TK_LEN))
   return -1;
 } else if (len == 0)
  data->key_set = 0;
 else
  return -1;

 return 0;
}
