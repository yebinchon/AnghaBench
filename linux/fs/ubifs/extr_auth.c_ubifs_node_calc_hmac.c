
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ubifs_info {int hmac_desc_len; int hmac_tfm; } ;
struct TYPE_6__ {int tfm; } ;


 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 int crypto_shash_final (TYPE_1__*,void*) ;
 int crypto_shash_init (TYPE_1__*) ;
 int crypto_shash_update (TYPE_1__*,void const*,int) ;
 TYPE_1__* shash ;
 int ubifs_assert (struct ubifs_info const*,int) ;

__attribute__((used)) static int ubifs_node_calc_hmac(const struct ubifs_info *c, const void *node,
    int len, int ofs_hmac, void *hmac)
{
 SHASH_DESC_ON_STACK(shash, c->hmac_tfm);
 int hmac_len = c->hmac_desc_len;
 int err;

 ubifs_assert(c, ofs_hmac > 8);
 ubifs_assert(c, ofs_hmac + hmac_len < len);

 shash->tfm = c->hmac_tfm;

 err = crypto_shash_init(shash);
 if (err)
  return err;


 err = crypto_shash_update(shash, node + 8, ofs_hmac - 8);
 if (err < 0)
  return err;


 if (len - ofs_hmac - hmac_len > 0) {
  err = crypto_shash_update(shash, node + ofs_hmac + hmac_len,
       len - ofs_hmac - hmac_len);
  if (err < 0)
   return err;
 }

 return crypto_shash_final(shash, hmac);
}
