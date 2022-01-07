
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
typedef struct crypto_skcipher crypto_shash ;


 int AES_BLOCK_SIZE ;
 int CRYPTO_ALG_ASYNC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_skcipher*) ;
 int PTR_ERR (struct crypto_skcipher*) ;
 int aes_s2v (struct crypto_skcipher*,size_t,int const**,size_t*,int*) ;
 struct crypto_skcipher* crypto_alloc_shash (char*,int ,int ) ;
 struct crypto_skcipher* crypto_alloc_skcipher (char*,int ,int ) ;
 int crypto_free_shash (struct crypto_skcipher*) ;
 int crypto_free_skcipher (struct crypto_skcipher*) ;
 int crypto_shash_setkey (struct crypto_skcipher*,int const*,size_t) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 int crypto_skcipher_setkey (struct crypto_skcipher*,int const*,size_t) ;
 int kfree (int*) ;
 int* kmemdup (int const*,size_t,int ) ;
 int memcpy (int*,int*,int) ;
 int sg_init_one (struct scatterlist*,int*,size_t) ;
 struct skcipher_request* skcipher_request_alloc (struct crypto_skcipher*,int ) ;
 int skcipher_request_free (struct skcipher_request*) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,size_t,int*) ;

__attribute__((used)) static int aes_siv_encrypt(const u8 *key, size_t key_len,
      const u8 *plain, size_t plain_len,
      size_t num_elem, const u8 *addr[],
      size_t len[], u8 *out)
{
 u8 v[AES_BLOCK_SIZE];
 struct crypto_shash *tfm;
 struct crypto_skcipher *tfm2;
 struct skcipher_request *req;
 int res;
 struct scatterlist src[1], dst[1];
 u8 *tmp;

 key_len /= 2;

 addr[num_elem] = plain;
 len[num_elem] = plain_len;
 num_elem++;



 tfm = crypto_alloc_shash("cmac(aes)", 0, 0);
 if (IS_ERR(tfm))
  return PTR_ERR(tfm);

 res = crypto_shash_setkey(tfm, key, key_len);
 if (!res)
  res = aes_s2v(tfm, num_elem, addr, len, v);
 crypto_free_shash(tfm);
 if (res)
  return res;




 tmp = kmemdup(plain, plain_len, GFP_KERNEL);
 if (!tmp)
  return -ENOMEM;


 memcpy(out, v, AES_BLOCK_SIZE);




 v[8] &= 0x7f;
 v[12] &= 0x7f;



 tfm2 = crypto_alloc_skcipher("ctr(aes)", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(tfm2)) {
  kfree(tmp);
  return PTR_ERR(tfm2);
 }

 res = crypto_skcipher_setkey(tfm2, key + key_len, key_len);
 if (res)
  goto fail;

 req = skcipher_request_alloc(tfm2, GFP_KERNEL);
 if (!req) {
  res = -ENOMEM;
  goto fail;
 }

 sg_init_one(src, tmp, plain_len);
 sg_init_one(dst, out + AES_BLOCK_SIZE, plain_len);
 skcipher_request_set_crypt(req, src, dst, plain_len, v);
 res = crypto_skcipher_encrypt(req);
 skcipher_request_free(req);
fail:
 kfree(tmp);
 crypto_free_skcipher(tfm2);
 return res;
}
