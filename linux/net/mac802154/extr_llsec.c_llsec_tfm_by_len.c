
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac802154_llsec_key {struct crypto_aead** tfm; } ;
struct crypto_aead {int dummy; } ;


 int ARRAY_SIZE (struct crypto_aead**) ;
 int BUG () ;
 int crypto_aead_authsize (struct crypto_aead*) ;

__attribute__((used)) static struct crypto_aead*
llsec_tfm_by_len(struct mac802154_llsec_key *key, int authlen)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(key->tfm); i++)
  if (crypto_aead_authsize(key->tfm[i]) == authlen)
   return key->tfm[i];

 BUG();
}
