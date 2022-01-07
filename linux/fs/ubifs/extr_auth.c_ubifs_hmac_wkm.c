
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int well_known_message ;
typedef int u8 ;
struct ubifs_info {int hmac_tfm; } ;
struct TYPE_6__ {int tfm; } ;


 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 int crypto_shash_final (TYPE_1__*,int *) ;
 int crypto_shash_init (TYPE_1__*) ;
 int crypto_shash_update (TYPE_1__*,char const*,int) ;
 TYPE_1__* shash ;
 int ubifs_authenticated (struct ubifs_info*) ;

int ubifs_hmac_wkm(struct ubifs_info *c, u8 *hmac)
{
 SHASH_DESC_ON_STACK(shash, c->hmac_tfm);
 int err;
 const char well_known_message[] = "UBIFS";

 if (!ubifs_authenticated(c))
  return 0;

 shash->tfm = c->hmac_tfm;

 err = crypto_shash_init(shash);
 if (err)
  return err;

 err = crypto_shash_update(shash, well_known_message,
      sizeof(well_known_message) - 1);
 if (err < 0)
  return err;

 err = crypto_shash_final(shash, hmac);
 if (err)
  return err;
 return 0;
}
