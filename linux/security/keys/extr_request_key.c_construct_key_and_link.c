
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * type; } ;
struct keyring_search_context {TYPE_1__ index_key; } ;
struct key_user {int dummy; } ;
struct key {int dummy; } ;


 int EINPROGRESS ;
 int ENOMEM ;
 int EPERM ;
 struct key* ERR_PTR (int) ;
 int construct_alloc_key (struct keyring_search_context*,struct key*,unsigned long,struct key_user*,struct key**) ;
 int construct_get_dest_keyring (struct key**) ;
 int construct_key (struct key*,char const*,size_t,void*,struct key*) ;
 int current_fsuid () ;
 int kdebug (char*) ;
 int kenter (char*) ;
 int key_negate_and_link (struct key*,int ,int *,int *) ;
 int key_negative_timeout ;
 int key_put (struct key*) ;
 int key_serial (struct key*) ;
 int key_type_keyring ;
 struct key_user* key_user_lookup (int ) ;
 int key_user_put (struct key_user*) ;
 int kleave (char*,int) ;

__attribute__((used)) static struct key *construct_key_and_link(struct keyring_search_context *ctx,
       const char *callout_info,
       size_t callout_len,
       void *aux,
       struct key *dest_keyring,
       unsigned long flags)
{
 struct key_user *user;
 struct key *key;
 int ret;

 kenter("");

 if (ctx->index_key.type == &key_type_keyring)
  return ERR_PTR(-EPERM);

 ret = construct_get_dest_keyring(&dest_keyring);
 if (ret)
  goto error;

 user = key_user_lookup(current_fsuid());
 if (!user) {
  ret = -ENOMEM;
  goto error_put_dest_keyring;
 }

 ret = construct_alloc_key(ctx, dest_keyring, flags, user, &key);
 key_user_put(user);

 if (ret == 0) {
  ret = construct_key(key, callout_info, callout_len, aux,
        dest_keyring);
  if (ret < 0) {
   kdebug("cons failed");
   goto construction_failed;
  }
 } else if (ret == -EINPROGRESS) {
  ret = 0;
 } else {
  goto error_put_dest_keyring;
 }

 key_put(dest_keyring);
 kleave(" = key %d", key_serial(key));
 return key;

construction_failed:
 key_negate_and_link(key, key_negative_timeout, ((void*)0), ((void*)0));
 key_put(key);
error_put_dest_keyring:
 key_put(dest_keyring);
error:
 kleave(" = %d", ret);
 return ERR_PTR(ret);
}
