
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int log_hash; int hash_tfm; int hmac_tfm; } ;


 int crypto_free_shash (int ) ;
 int kfree (int ) ;
 int ubifs_authenticated (struct ubifs_info*) ;

void __ubifs_exit_authentication(struct ubifs_info *c)
{
 if (!ubifs_authenticated(c))
  return;

 crypto_free_shash(c->hmac_tfm);
 crypto_free_shash(c->hash_tfm);
 kfree(c->log_hash);
}
