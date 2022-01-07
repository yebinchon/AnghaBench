
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_key_auth {struct cred const* cred; } ;
struct TYPE_4__ {int * type; } ;
struct keyring_search_context {struct cred const* cred; TYPE_1__ index_key; } ;
typedef struct cred {TYPE_3__* request_key_auth; } const cred ;
typedef scalar_t__ key_ref_t ;
struct TYPE_5__ {struct request_key_auth** data; } ;
struct TYPE_6__ {TYPE_2__ payload; } ;


 int EACCES ;
 int ENOKEY ;
 scalar_t__ ERR_PTR (int ) ;
 int IS_ERR (scalar_t__) ;
 struct cred const* current_cred () ;
 int key_type_request_key_auth ;
 scalar_t__ key_validate (TYPE_3__*) ;
 scalar_t__ search_cred_keyrings_rcu (struct keyring_search_context*) ;

key_ref_t search_process_keyrings_rcu(struct keyring_search_context *ctx)
{
 struct request_key_auth *rka;
 key_ref_t key_ref, ret = ERR_PTR(-EACCES), err;

 key_ref = search_cred_keyrings_rcu(ctx);
 if (!IS_ERR(key_ref))
  goto found;
 err = key_ref;





 if (ctx->cred->request_key_auth &&
     ctx->cred == current_cred() &&
     ctx->index_key.type != &key_type_request_key_auth
     ) {
  const struct cred *cred = ctx->cred;

  if (key_validate(cred->request_key_auth) == 0) {
   rka = ctx->cred->request_key_auth->payload.data[0];


   ctx->cred = rka->cred;
   key_ref = search_cred_keyrings_rcu(ctx);
   ctx->cred = cred;

   if (!IS_ERR(key_ref))
    goto found;
   ret = key_ref;
  }
 }


 if (err == ERR_PTR(-ENOKEY) || ret == ERR_PTR(-ENOKEY))
  key_ref = ERR_PTR(-ENOKEY);
 else if (err == ERR_PTR(-EACCES))
  key_ref = ret;
 else
  key_ref = err;

found:
 return key_ref;
}
