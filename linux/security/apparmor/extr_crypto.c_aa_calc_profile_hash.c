
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct aa_profile {int * hash; } ;
typedef int __le32 ;
struct TYPE_6__ {scalar_t__ tfm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SHASH_DESC_ON_STACK (TYPE_1__*,scalar_t__) ;
 int aa_g_hash_policy ;
 int apparmor_hash_size ;
 scalar_t__ apparmor_tfm ;
 int cpu_to_le32 (int ) ;
 int crypto_shash_final (TYPE_1__*,int *) ;
 int crypto_shash_init (TYPE_1__*) ;
 int crypto_shash_update (TYPE_1__*,int *,size_t) ;
 TYPE_1__* desc ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;

int aa_calc_profile_hash(struct aa_profile *profile, u32 version, void *start,
    size_t len)
{
 SHASH_DESC_ON_STACK(desc, apparmor_tfm);
 int error = -ENOMEM;
 __le32 le32_version = cpu_to_le32(version);

 if (!aa_g_hash_policy)
  return 0;

 if (!apparmor_tfm)
  return 0;

 profile->hash = kzalloc(apparmor_hash_size, GFP_KERNEL);
 if (!profile->hash)
  goto fail;

 desc->tfm = apparmor_tfm;

 error = crypto_shash_init(desc);
 if (error)
  goto fail;
 error = crypto_shash_update(desc, (u8 *) &le32_version, 4);
 if (error)
  goto fail;
 error = crypto_shash_update(desc, (u8 *) start, len);
 if (error)
  goto fail;
 error = crypto_shash_final(desc, profile->hash);
 if (error)
  goto fail;

 return 0;

fail:
 kfree(profile->hash);
 profile->hash = ((void*)0);

 return error;
}
