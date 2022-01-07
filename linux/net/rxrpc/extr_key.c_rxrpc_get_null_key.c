
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct cred {int dummy; } ;


 struct key* ERR_PTR (int) ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_ALLOC_NOT_IN_QUOTA ;
 int KEY_POS_SEARCH ;
 struct cred* current_cred () ;
 struct key* key_alloc (int *,char const*,int ,int ,struct cred const*,int ,int ,int *) ;
 int key_instantiate_and_link (struct key*,int *,int ,int *,int *) ;
 int key_put (struct key*) ;
 int key_revoke (struct key*) ;
 int key_type_rxrpc ;

struct key *rxrpc_get_null_key(const char *keyname)
{
 const struct cred *cred = current_cred();
 struct key *key;
 int ret;

 key = key_alloc(&key_type_rxrpc, keyname,
   GLOBAL_ROOT_UID, GLOBAL_ROOT_GID, cred,
   KEY_POS_SEARCH, KEY_ALLOC_NOT_IN_QUOTA, ((void*)0));
 if (IS_ERR(key))
  return key;

 ret = key_instantiate_and_link(key, ((void*)0), 0, ((void*)0), ((void*)0));
 if (ret < 0) {
  key_revoke(key);
  key_put(key);
  return ERR_PTR(ret);
 }

 return key;
}
