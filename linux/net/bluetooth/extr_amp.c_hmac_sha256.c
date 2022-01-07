
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;


 int BT_DBG (char*,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 struct crypto_shash* crypto_alloc_shash (char*,int ,int ) ;
 int crypto_free_shash (struct crypto_shash*) ;
 scalar_t__ crypto_shash_descsize (struct crypto_shash*) ;
 int crypto_shash_digest (struct shash_desc*,char*,int ,int *) ;
 int crypto_shash_setkey (struct crypto_shash*,int *,int ) ;
 int kfree (struct shash_desc*) ;
 struct shash_desc* kzalloc (scalar_t__,int ) ;

__attribute__((used)) static int hmac_sha256(u8 *key, u8 ksize, char *plaintext, u8 psize, u8 *output)
{
 struct crypto_shash *tfm;
 struct shash_desc *shash;
 int ret;

 if (!ksize)
  return -EINVAL;

 tfm = crypto_alloc_shash("hmac(sha256)", 0, 0);
 if (IS_ERR(tfm)) {
  BT_DBG("crypto_alloc_ahash failed: err %ld", PTR_ERR(tfm));
  return PTR_ERR(tfm);
 }

 ret = crypto_shash_setkey(tfm, key, ksize);
 if (ret) {
  BT_DBG("crypto_ahash_setkey failed: err %d", ret);
  goto failed;
 }

 shash = kzalloc(sizeof(*shash) + crypto_shash_descsize(tfm),
   GFP_KERNEL);
 if (!shash) {
  ret = -ENOMEM;
  goto failed;
 }

 shash->tfm = tfm;

 ret = crypto_shash_digest(shash, plaintext, psize, output);

 kfree(shash);

failed:
 crypto_free_shash(tfm);
 return ret;
}
