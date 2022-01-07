
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_skcipher {int dummy; } ;


 int CRYPTO_ALG_ASYNC ;
 scalar_t__ IS_ERR (struct crypto_skcipher*) ;
 int PTR_ERR (struct crypto_skcipher*) ;
 int blkcipher_alg ;
 int blksize ;
 struct crypto_skcipher* crypto_alloc_skcipher (int ,int ,int ) ;
 int crypto_free_skcipher (struct crypto_skcipher*) ;
 int crypto_skcipher_blocksize (struct crypto_skcipher*) ;
 int crypto_skcipher_ivsize (struct crypto_skcipher*) ;
 int ivsize ;
 int pr_err (char*,int) ;

__attribute__((used)) static int aes_get_sizes(void)
{
 struct crypto_skcipher *tfm;

 tfm = crypto_alloc_skcipher(blkcipher_alg, 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(tfm)) {
  pr_err("encrypted_key: failed to alloc_cipher (%ld)\n",
         PTR_ERR(tfm));
  return PTR_ERR(tfm);
 }
 ivsize = crypto_skcipher_ivsize(tfm);
 blksize = crypto_skcipher_blocksize(tfm);
 crypto_free_skcipher(tfm);
 return 0;
}
