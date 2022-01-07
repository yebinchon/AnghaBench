
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;


 struct crypto_aead* aead_key_setup_encrypt (char*,int const*,size_t,size_t) ;

__attribute__((used)) static inline struct crypto_aead *
ieee80211_aes_key_setup_encrypt(const u8 key[], size_t key_len, size_t mic_len)
{
 return aead_key_setup_encrypt("ccm(aes)", key, key_len, mic_len);
}
