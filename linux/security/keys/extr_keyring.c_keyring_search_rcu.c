
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keyring_search_context {int flags; int result; int now; int cred; int possessed; int iterator; } ;
struct key {int * type; } ;
typedef int key_ref_t ;


 long EAGAIN ;
 long ENOTDIR ;
 int ERR_PTR (long) ;
 int KEYRING_SEARCH_NO_CHECK_PERM ;
 int KEY_NEED_SEARCH ;
 int __key_get (struct key*) ;
 int is_key_possessed (int ) ;
 int key_check (struct key*) ;
 struct key* key_ref_to_ptr (int ) ;
 long key_task_permission (int ,int ,int ) ;
 int key_type_keyring ;
 int keyring_search_iterator ;
 int ktime_get_real_seconds () ;
 scalar_t__ search_nested_keyrings (struct key*,struct keyring_search_context*) ;

key_ref_t keyring_search_rcu(key_ref_t keyring_ref,
        struct keyring_search_context *ctx)
{
 struct key *keyring;
 long err;

 ctx->iterator = keyring_search_iterator;
 ctx->possessed = is_key_possessed(keyring_ref);
 ctx->result = ERR_PTR(-EAGAIN);

 keyring = key_ref_to_ptr(keyring_ref);
 key_check(keyring);

 if (keyring->type != &key_type_keyring)
  return ERR_PTR(-ENOTDIR);

 if (!(ctx->flags & KEYRING_SEARCH_NO_CHECK_PERM)) {
  err = key_task_permission(keyring_ref, ctx->cred, KEY_NEED_SEARCH);
  if (err < 0)
   return ERR_PTR(err);
 }

 ctx->now = ktime_get_real_seconds();
 if (search_nested_keyrings(keyring, ctx))
  __key_get(key_ref_to_ptr(ctx->result));
 return ctx->result;
}
