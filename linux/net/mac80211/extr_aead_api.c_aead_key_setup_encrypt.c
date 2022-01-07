
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;


 int CRYPTO_ALG_ASYNC ;
 struct crypto_aead* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct crypto_aead*) ;
 int crypto_aead_setauthsize (struct crypto_aead*,size_t) ;
 int crypto_aead_setkey (struct crypto_aead*,int const*,size_t) ;
 struct crypto_aead* crypto_alloc_aead (char const*,int ,int ) ;
 int crypto_free_aead (struct crypto_aead*) ;

struct crypto_aead *
aead_key_setup_encrypt(const char *alg, const u8 key[],
         size_t key_len, size_t mic_len)
{
 struct crypto_aead *tfm;
 int err;

 tfm = crypto_alloc_aead(alg, 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(tfm))
  return tfm;

 err = crypto_aead_setkey(tfm, key, key_len);
 if (err)
  goto free_aead;
 err = crypto_aead_setauthsize(tfm, mic_len);
 if (err)
  goto free_aead;

 return tfm;

free_aead:
 crypto_free_aead(tfm);
 return ERR_PTR(err);
}
