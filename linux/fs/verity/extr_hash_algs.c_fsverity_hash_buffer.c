
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct fsverity_hash_alg {int tfm; } ;
struct ahash_request {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int DECLARE_CRYPTO_WAIT (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct ahash_request* ahash_request_alloc (int ,int ) ;
 int ahash_request_free (struct ahash_request*) ;
 int ahash_request_set_callback (struct ahash_request*,int,int ,int *) ;
 int ahash_request_set_crypt (struct ahash_request*,struct scatterlist*,int *,size_t) ;
 int crypto_ahash_digest (struct ahash_request*) ;
 int crypto_req_done ;
 int crypto_wait_req (int ,int *) ;
 int sg_init_one (struct scatterlist*,void const*,size_t) ;
 int wait ;

int fsverity_hash_buffer(const struct fsverity_hash_alg *alg,
    const void *data, size_t size, u8 *out)
{
 struct ahash_request *req;
 struct scatterlist sg;
 DECLARE_CRYPTO_WAIT(wait);
 int err;

 req = ahash_request_alloc(alg->tfm, GFP_KERNEL);
 if (!req)
  return -ENOMEM;

 sg_init_one(&sg, data, size);
 ahash_request_set_callback(req, CRYPTO_TFM_REQ_MAY_SLEEP |
     CRYPTO_TFM_REQ_MAY_BACKLOG,
       crypto_req_done, &wait);
 ahash_request_set_crypt(req, &sg, out, size);

 err = crypto_wait_req(crypto_ahash_digest(req), &wait);

 ahash_request_free(req);
 return err;
}
