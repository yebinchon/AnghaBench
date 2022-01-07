
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_shash {int dummy; } ;


 int crypto_free_shash (struct crypto_shash*) ;

void ieee80211_aes_cmac_key_free(struct crypto_shash *tfm)
{
 crypto_free_shash(tfm);
}
