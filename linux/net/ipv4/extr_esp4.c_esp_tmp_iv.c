
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
struct crypto_aead {int dummy; } ;


 void* PTR_ALIGN (void*,scalar_t__) ;
 scalar_t__ crypto_aead_alignmask (struct crypto_aead*) ;
 scalar_t__ crypto_aead_ivsize (struct crypto_aead*) ;

__attribute__((used)) static inline u8 *esp_tmp_iv(struct crypto_aead *aead, void *tmp, int extralen)
{
 return crypto_aead_ivsize(aead) ?
        PTR_ALIGN((u8 *)tmp + extralen,
    crypto_aead_alignmask(aead) + 1) : tmp + extralen;
}
