
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct scatterlist {int dummy; } ;
struct kpp_request {int dummy; } ;
struct ecdh_completion {int err; int completion; } ;
struct crypto_kpp {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EINPROGRESS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int crypto_kpp_generate_public_key (struct kpp_request*) ;
 int ecdh_complete ;
 int init_completion (int *) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 struct kpp_request* kpp_request_alloc (struct crypto_kpp*,int ) ;
 int kpp_request_free (struct kpp_request*) ;
 int kpp_request_set_callback (struct kpp_request*,int ,int ,struct ecdh_completion*) ;
 int kpp_request_set_input (struct kpp_request*,int *,int ) ;
 int kpp_request_set_output (struct kpp_request*,struct scatterlist*,int) ;
 int sg_init_one (struct scatterlist*,int *,int) ;
 int swap_digits (int *,int *,int) ;
 int wait_for_completion (int *) ;

int generate_ecdh_public_key(struct crypto_kpp *tfm, u8 public_key[64])
{
 struct kpp_request *req;
 u8 *tmp;
 struct ecdh_completion result;
 struct scatterlist dst;
 int err;

 tmp = kmalloc(64, GFP_KERNEL);
 if (!tmp)
  return -ENOMEM;

 req = kpp_request_alloc(tfm, GFP_KERNEL);
 if (!req) {
  err = -ENOMEM;
  goto free_tmp;
 }

 init_completion(&result.completion);
 sg_init_one(&dst, tmp, 64);
 kpp_request_set_input(req, ((void*)0), 0);
 kpp_request_set_output(req, &dst, 64);
 kpp_request_set_callback(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
     ecdh_complete, &result);

 err = crypto_kpp_generate_public_key(req);
 if (err == -EINPROGRESS) {
  wait_for_completion(&result.completion);
  err = result.err;
 }
 if (err < 0)
  goto free_all;




 swap_digits((u64 *)tmp, (u64 *)public_key, 4);
 swap_digits((u64 *)&tmp[32], (u64 *)&public_key[32], 4);

free_all:
 kpp_request_free(req);
free_tmp:
 kfree(tmp);
 return err;
}
