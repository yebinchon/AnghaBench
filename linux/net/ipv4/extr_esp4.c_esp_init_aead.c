
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {char* geniv; TYPE_1__* aead; struct crypto_aead* data; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {char* alg_name; int alg_key_len; int alg_icv_len; int alg_key; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int ENAMETOOLONG ;
 scalar_t__ IS_ERR (struct crypto_aead*) ;
 int PTR_ERR (struct crypto_aead*) ;
 int crypto_aead_setauthsize (struct crypto_aead*,int) ;
 int crypto_aead_setkey (struct crypto_aead*,int ,int) ;
 struct crypto_aead* crypto_alloc_aead (char*,int ,int ) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int esp_init_aead(struct xfrm_state *x)
{
 char aead_name[CRYPTO_MAX_ALG_NAME];
 struct crypto_aead *aead;
 int err;

 err = -ENAMETOOLONG;
 if (snprintf(aead_name, CRYPTO_MAX_ALG_NAME, "%s(%s)",
       x->geniv, x->aead->alg_name) >= CRYPTO_MAX_ALG_NAME)
  goto error;

 aead = crypto_alloc_aead(aead_name, 0, 0);
 err = PTR_ERR(aead);
 if (IS_ERR(aead))
  goto error;

 x->data = aead;

 err = crypto_aead_setkey(aead, x->aead->alg_key,
     (x->aead->alg_key_len + 7) / 8);
 if (err)
  goto error;

 err = crypto_aead_setauthsize(aead, x->aead->alg_icv_len / 8);
 if (err)
  goto error;

error:
 return err;
}
