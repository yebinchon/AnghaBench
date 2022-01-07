
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ubifs_info {int hash_len; int hmac_tfm; } ;
struct TYPE_4__ {int tfm; } ;


 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 int crypto_shash_digest (TYPE_1__*,int const*,int ,int *) ;
 TYPE_1__* shash ;

__attribute__((used)) static int ubifs_hash_calc_hmac(const struct ubifs_info *c, const u8 *hash,
     u8 *hmac)
{
 SHASH_DESC_ON_STACK(shash, c->hmac_tfm);
 int err;

 shash->tfm = c->hmac_tfm;

 err = crypto_shash_digest(shash, hash, c->hash_len, hmac);
 if (err < 0)
  return err;
 return 0;
}
