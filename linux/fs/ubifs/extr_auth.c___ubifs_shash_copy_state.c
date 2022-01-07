
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ubifs_info {int dummy; } ;
struct shash_desc {int tfm; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int crypto_shash_descsize (int ) ;
 int crypto_shash_export (struct shash_desc*,int *) ;
 int crypto_shash_import (struct shash_desc*,int *) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;

int __ubifs_shash_copy_state(const struct ubifs_info *c, struct shash_desc *src,
        struct shash_desc *target)
{
 u8 *state;
 int err;

 state = kmalloc(crypto_shash_descsize(src->tfm), GFP_NOFS);
 if (!state)
  return -ENOMEM;

 err = crypto_shash_export(src, state);
 if (err)
  goto out;

 err = crypto_shash_import(target, state);

out:
 kfree(state);

 return err;
}
