
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;


 scalar_t__ PTR_ALIGN (int *,int ) ;
 int ahash_request_set_tfm (struct ahash_request*,struct crypto_ahash*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 int crypto_tfm_ctx_alignment () ;

__attribute__((used)) static inline struct ahash_request *ah_tmp_req(struct crypto_ahash *ahash,
            u8 *icv)
{
 struct ahash_request *req;

 req = (void *)PTR_ALIGN(icv + crypto_ahash_digestsize(ahash),
    crypto_tfm_ctx_alignment());

 ahash_request_set_tfm(req, ahash);

 return req;
}
