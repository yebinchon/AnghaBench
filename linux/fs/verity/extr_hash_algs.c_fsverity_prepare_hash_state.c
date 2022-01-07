
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct scatterlist {int dummy; } ;
struct fsverity_hash_alg {int block_size; int tfm; } ;
struct ahash_request {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int DECLARE_CRYPTO_WAIT (int ) ;
 int ENOMEM ;
 int const* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct ahash_request* ahash_request_alloc (int ,int ) ;
 int ahash_request_free (struct ahash_request*) ;
 int ahash_request_set_callback (struct ahash_request*,int,int ,int *) ;
 int ahash_request_set_crypt (struct ahash_request*,struct scatterlist*,int *,size_t) ;
 int crypto_ahash_export (struct ahash_request*,int const*) ;
 int crypto_ahash_init (struct ahash_request*) ;
 int crypto_ahash_statesize (int ) ;
 int crypto_ahash_update (struct ahash_request*) ;
 int crypto_req_done ;
 int crypto_wait_req (int ,int *) ;
 int kfree (int const*) ;
 int const* kmalloc (int ,int ) ;
 int const* kzalloc (size_t,int ) ;
 int memcpy (int const*,int const*,size_t) ;
 size_t round_up (size_t,int ) ;
 int sg_init_one (struct scatterlist*,int const*,size_t) ;
 int wait ;

const u8 *fsverity_prepare_hash_state(const struct fsverity_hash_alg *alg,
          const u8 *salt, size_t salt_size)
{
 u8 *hashstate = ((void*)0);
 struct ahash_request *req = ((void*)0);
 u8 *padded_salt = ((void*)0);
 size_t padded_salt_size;
 struct scatterlist sg;
 DECLARE_CRYPTO_WAIT(wait);
 int err;

 if (salt_size == 0)
  return ((void*)0);

 hashstate = kmalloc(crypto_ahash_statesize(alg->tfm), GFP_KERNEL);
 if (!hashstate)
  return ERR_PTR(-ENOMEM);

 req = ahash_request_alloc(alg->tfm, GFP_KERNEL);
 if (!req) {
  err = -ENOMEM;
  goto err_free;
 }
 padded_salt_size = round_up(salt_size, alg->block_size);
 padded_salt = kzalloc(padded_salt_size, GFP_KERNEL);
 if (!padded_salt) {
  err = -ENOMEM;
  goto err_free;
 }
 memcpy(padded_salt, salt, salt_size);

 sg_init_one(&sg, padded_salt, padded_salt_size);
 ahash_request_set_callback(req, CRYPTO_TFM_REQ_MAY_SLEEP |
     CRYPTO_TFM_REQ_MAY_BACKLOG,
       crypto_req_done, &wait);
 ahash_request_set_crypt(req, &sg, ((void*)0), padded_salt_size);

 err = crypto_wait_req(crypto_ahash_init(req), &wait);
 if (err)
  goto err_free;

 err = crypto_wait_req(crypto_ahash_update(req), &wait);
 if (err)
  goto err_free;

 err = crypto_ahash_export(req, hashstate);
 if (err)
  goto err_free;
out:
 ahash_request_free(req);
 kfree(padded_salt);
 return hashstate;

err_free:
 kfree(hashstate);
 hashstate = ERR_PTR(err);
 goto out;
}
