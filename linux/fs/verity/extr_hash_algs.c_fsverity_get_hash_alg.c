
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef struct fsverity_hash_alg {unsigned int name; scalar_t__ digest_size; scalar_t__ block_size; int tfm; } const fsverity_hash_alg ;
struct crypto_ahash {int dummy; } ;


 unsigned int ARRAY_SIZE (struct fsverity_hash_alg const*) ;
 int EINVAL ;
 int ENOENT ;
 int ENOPKG ;
 struct fsverity_hash_alg const* ERR_CAST (struct crypto_ahash*) ;
 struct fsverity_hash_alg const* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct crypto_ahash*) ;
 int PTR_ERR (struct crypto_ahash*) ;
 struct crypto_ahash* READ_ONCE (int ) ;
 scalar_t__ WARN_ON (int) ;
 int * cmpxchg (int *,int *,struct crypto_ahash*) ;
 scalar_t__ crypto_ahash_blocksize (struct crypto_ahash*) ;
 scalar_t__ crypto_ahash_digestsize (struct crypto_ahash*) ;
 int crypto_ahash_driver_name (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_alloc_ahash (unsigned int,int ,int ) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 int fsverity_err (struct inode const*,char*,unsigned int,int ) ;
 struct fsverity_hash_alg const* fsverity_hash_algs ;
 int fsverity_warn (struct inode const*,char*,unsigned int) ;
 scalar_t__ likely (int ) ;
 int pr_info (char*,unsigned int,int ) ;

const struct fsverity_hash_alg *fsverity_get_hash_alg(const struct inode *inode,
            unsigned int num)
{
 struct fsverity_hash_alg *alg;
 struct crypto_ahash *tfm;
 int err;

 if (num >= ARRAY_SIZE(fsverity_hash_algs) ||
     !fsverity_hash_algs[num].name) {
  fsverity_warn(inode, "Unknown hash algorithm number: %u", num);
  return ERR_PTR(-EINVAL);
 }
 alg = &fsverity_hash_algs[num];


 tfm = READ_ONCE(alg->tfm);
 if (likely(tfm != ((void*)0)))
  return alg;




 tfm = crypto_alloc_ahash(alg->name, 0, 0);
 if (IS_ERR(tfm)) {
  if (PTR_ERR(tfm) == -ENOENT) {
   fsverity_warn(inode,
          "Missing crypto API support for hash algorithm \"%s\"",
          alg->name);
   return ERR_PTR(-ENOPKG);
  }
  fsverity_err(inode,
        "Error allocating hash algorithm \"%s\": %ld",
        alg->name, PTR_ERR(tfm));
  return ERR_CAST(tfm);
 }

 err = -EINVAL;
 if (WARN_ON(alg->digest_size != crypto_ahash_digestsize(tfm)))
  goto err_free_tfm;
 if (WARN_ON(alg->block_size != crypto_ahash_blocksize(tfm)))
  goto err_free_tfm;

 pr_info("%s using implementation \"%s\"\n",
  alg->name, crypto_ahash_driver_name(tfm));


 if (cmpxchg(&alg->tfm, ((void*)0), tfm) != ((void*)0))
  crypto_free_ahash(tfm);

 return alg;

err_free_tfm:
 crypto_free_ahash(tfm);
 return ERR_PTR(err);
}
