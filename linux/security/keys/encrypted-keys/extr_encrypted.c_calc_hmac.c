
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_shash {int dummy; } ;


 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 int calc_hash (struct crypto_shash*,int *,int const*,unsigned int) ;
 struct crypto_shash* crypto_alloc_shash (int ,int ,int ) ;
 int crypto_free_shash (struct crypto_shash*) ;
 int crypto_shash_setkey (struct crypto_shash*,int const*,unsigned int) ;
 int hmac_alg ;
 int pr_err (char*,int ,int) ;

__attribute__((used)) static int calc_hmac(u8 *digest, const u8 *key, unsigned int keylen,
       const u8 *buf, unsigned int buflen)
{
 struct crypto_shash *tfm;
 int err;

 tfm = crypto_alloc_shash(hmac_alg, 0, 0);
 if (IS_ERR(tfm)) {
  pr_err("encrypted_key: can't alloc %s transform: %ld\n",
         hmac_alg, PTR_ERR(tfm));
  return PTR_ERR(tfm);
 }

 err = crypto_shash_setkey(tfm, key, keylen);
 if (!err)
  err = calc_hash(tfm, digest, buf, buflen);
 crypto_free_shash(tfm);
 return err;
}
