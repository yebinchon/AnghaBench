
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct crypto_sync_skcipher {int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_sync_skcipher*) ;
 int PTR_ERR (struct crypto_sync_skcipher*) ;
 struct crypto_sync_skcipher* crypto_alloc_sync_skcipher (char*,int ,int ) ;
 int crypto_free_sync_skcipher (struct crypto_sync_skcipher*) ;
 struct crypto_sync_skcipher* rxkad_ci ;
 struct skcipher_request* rxkad_ci_req ;
 struct skcipher_request* skcipher_request_alloc (int *,int ) ;

__attribute__((used)) static int rxkad_init(void)
{
 struct crypto_sync_skcipher *tfm;
 struct skcipher_request *req;



 tfm = crypto_alloc_sync_skcipher("pcbc(fcrypt)", 0, 0);
 if (IS_ERR(tfm))
  return PTR_ERR(tfm);

 req = skcipher_request_alloc(&tfm->base, GFP_KERNEL);
 if (!req)
  goto nomem_tfm;

 rxkad_ci_req = req;
 rxkad_ci = tfm;
 return 0;

nomem_tfm:
 crypto_free_sync_skcipher(tfm);
 return -ENOMEM;
}
