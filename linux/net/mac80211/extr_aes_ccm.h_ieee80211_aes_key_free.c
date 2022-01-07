
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 void aead_key_free (struct crypto_aead*) ;

__attribute__((used)) static inline void ieee80211_aes_key_free(struct crypto_aead *tfm)
{
 return aead_key_free(tfm);
}
