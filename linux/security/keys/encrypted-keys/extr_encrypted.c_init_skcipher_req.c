
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_ALG_ASYNC ;
 int ENOMEM ;
 struct skcipher_request* ERR_CAST (struct crypto_skcipher*) ;
 struct skcipher_request* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_skcipher*) ;
 int PTR_ERR (struct crypto_skcipher*) ;
 int blkcipher_alg ;
 struct crypto_skcipher* crypto_alloc_skcipher (int,int ,int ) ;
 int crypto_free_skcipher (struct crypto_skcipher*) ;
 int crypto_skcipher_setkey (struct crypto_skcipher*,int const*,unsigned int) ;
 int pr_err (char*,int,...) ;
 struct skcipher_request* skcipher_request_alloc (struct crypto_skcipher*,int ) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int *,int *) ;

__attribute__((used)) static struct skcipher_request *init_skcipher_req(const u8 *key,
        unsigned int key_len)
{
 struct skcipher_request *req;
 struct crypto_skcipher *tfm;
 int ret;

 tfm = crypto_alloc_skcipher(blkcipher_alg, 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(tfm)) {
  pr_err("encrypted_key: failed to load %s transform (%ld)\n",
         blkcipher_alg, PTR_ERR(tfm));
  return ERR_CAST(tfm);
 }

 ret = crypto_skcipher_setkey(tfm, key, key_len);
 if (ret < 0) {
  pr_err("encrypted_key: failed to setkey (%d)\n", ret);
  crypto_free_skcipher(tfm);
  return ERR_PTR(ret);
 }

 req = skcipher_request_alloc(tfm, GFP_KERNEL);
 if (!req) {
  pr_err("encrypted_key: failed to allocate request for %s\n",
         blkcipher_alg);
  crypto_free_skcipher(tfm);
  return ERR_PTR(-ENOMEM);
 }

 skcipher_request_set_callback(req, 0, ((void*)0), ((void*)0));
 return req;
}
