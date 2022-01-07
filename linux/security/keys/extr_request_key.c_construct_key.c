
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int flags; TYPE_1__* type; int serial; } ;
typedef int (* request_key_actor_t ) (struct key*,void*) ;
struct TYPE_2__ {int (* request_key ) (struct key*,void*) ;} ;


 scalar_t__ IS_ERR (struct key*) ;
 int KEY_FLAG_INVALIDATED ;
 int PTR_ERR (struct key*) ;
 int WARN_ON (int) ;
 int call_sbin_request_key (struct key*,void*) ;
 int kenter (char*,int ,void const*,size_t,void*) ;
 int key_put (struct key*) ;
 int kleave (char*,int) ;
 struct key* request_key_auth_new (struct key*,char*,void const*,size_t,struct key*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int construct_key(struct key *key, const void *callout_info,
    size_t callout_len, void *aux,
    struct key *dest_keyring)
{
 request_key_actor_t actor;
 struct key *authkey;
 int ret;

 kenter("%d,%p,%zu,%p", key->serial, callout_info, callout_len, aux);


 authkey = request_key_auth_new(key, "create", callout_info, callout_len,
           dest_keyring);
 if (IS_ERR(authkey))
  return PTR_ERR(authkey);


 actor = call_sbin_request_key;
 if (key->type->request_key)
  actor = key->type->request_key;

 ret = actor(authkey, aux);



 WARN_ON(ret < 0 &&
  !test_bit(KEY_FLAG_INVALIDATED, &authkey->flags));

 key_put(authkey);
 kleave(" = %d", ret);
 return ret;
}
