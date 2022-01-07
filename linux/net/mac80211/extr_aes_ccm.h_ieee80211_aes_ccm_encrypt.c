
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;
typedef int __be16 ;


 int aead_encrypt (struct crypto_aead*,int *,int *,int ,int *,size_t,int *) ;
 int be16_to_cpup (int *) ;

__attribute__((used)) static inline int
ieee80211_aes_ccm_encrypt(struct crypto_aead *tfm,
     u8 *b_0, u8 *aad, u8 *data,
     size_t data_len, u8 *mic)
{
 return aead_encrypt(tfm, b_0, aad + 2,
       be16_to_cpup((__be16 *)aad),
       data, data_len, mic);
}
