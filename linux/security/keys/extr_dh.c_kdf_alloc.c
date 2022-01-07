
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shash_desc {int dummy; } ;
struct TYPE_2__ {struct crypto_shash* tfm; } ;
struct kdf_sdesc {TYPE_1__ shash; } ;
struct crypto_shash {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 struct crypto_shash* crypto_alloc_shash (char*,int ,int ) ;
 int crypto_free_shash (struct crypto_shash*) ;
 int crypto_shash_descsize (struct crypto_shash*) ;
 scalar_t__ crypto_shash_digestsize (struct crypto_shash*) ;
 struct kdf_sdesc* kmalloc (int,int ) ;
 int pr_info (char*,char*) ;

__attribute__((used)) static int kdf_alloc(struct kdf_sdesc **sdesc_ret, char *hashname)
{
 struct crypto_shash *tfm;
 struct kdf_sdesc *sdesc;
 int size;
 int err;


 tfm = crypto_alloc_shash(hashname, 0, 0);
 if (IS_ERR(tfm)) {
  pr_info("could not allocate digest TFM handle %s\n", hashname);
  return PTR_ERR(tfm);
 }

 err = -EINVAL;
 if (crypto_shash_digestsize(tfm) == 0)
  goto out_free_tfm;

 err = -ENOMEM;
 size = sizeof(struct shash_desc) + crypto_shash_descsize(tfm);
 sdesc = kmalloc(size, GFP_KERNEL);
 if (!sdesc)
  goto out_free_tfm;
 sdesc->shash.tfm = tfm;

 *sdesc_ret = sdesc;

 return 0;

out_free_tfm:
 crypto_free_shash(tfm);
 return err;
}
