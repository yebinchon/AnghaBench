
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {scalar_t__ tfm; } ;


 int ENOMEM ;
 char* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int SHASH_DESC_ON_STACK (TYPE_1__*,scalar_t__) ;
 int apparmor_hash_size ;
 scalar_t__ apparmor_tfm ;
 int crypto_shash_final (TYPE_1__*,char*) ;
 int crypto_shash_init (TYPE_1__*) ;
 int crypto_shash_update (TYPE_1__*,int *,size_t) ;
 TYPE_1__* desc ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;

char *aa_calc_hash(void *data, size_t len)
{
 SHASH_DESC_ON_STACK(desc, apparmor_tfm);
 char *hash = ((void*)0);
 int error = -ENOMEM;

 if (!apparmor_tfm)
  return ((void*)0);

 hash = kzalloc(apparmor_hash_size, GFP_KERNEL);
 if (!hash)
  goto fail;

 desc->tfm = apparmor_tfm;

 error = crypto_shash_init(desc);
 if (error)
  goto fail;
 error = crypto_shash_update(desc, (u8 *) data, len);
 if (error)
  goto fail;
 error = crypto_shash_final(desc, hash);
 if (error)
  goto fail;

 return hash;

fail:
 kfree(hash);

 return ERR_PTR(error);
}
