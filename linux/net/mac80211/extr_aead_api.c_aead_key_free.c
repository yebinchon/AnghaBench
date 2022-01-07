
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 int crypto_free_aead (struct crypto_aead*) ;

void aead_key_free(struct crypto_aead *tfm)
{
 crypto_free_aead(tfm);
}
