
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;


 int IEEE80211_GCMP_MIC_LEN ;
 struct crypto_aead* aead_key_setup_encrypt (char*,int const*,size_t,int ) ;

__attribute__((used)) static inline struct crypto_aead *
ieee80211_aes_gcm_key_setup_encrypt(const u8 key[], size_t key_len)
{
 return aead_key_setup_encrypt("gcm(aes)", key,
          key_len, IEEE80211_GCMP_MIC_LEN);
}
