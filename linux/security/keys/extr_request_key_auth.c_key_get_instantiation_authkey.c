
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* description; int desc_len; int * type; } ;
struct TYPE_4__ {char* raw_data; int lookup_type; int cmp; } ;
struct keyring_search_context {int flags; TYPE_1__ index_key; TYPE_2__ match_data; int cred; } ;
struct key {int flags; } ;
typedef int key_serial_t ;
typedef int key_ref_t ;


 int EAGAIN ;
 int EKEYREVOKED ;
 int ENOKEY ;
 struct key* ERR_CAST (int ) ;
 struct key* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int KEYRING_SEARCH_DO_STATE_CHECK ;
 int KEYRING_SEARCH_LOOKUP_DIRECT ;
 int KEYRING_SEARCH_RECURSE ;
 int KEY_FLAG_REVOKED ;
 int current_cred () ;
 int key_default_cmp ;
 int key_put (struct key*) ;
 struct key* key_ref_to_ptr (int ) ;
 int key_type_request_key_auth ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int search_process_keyrings_rcu (struct keyring_search_context*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;

struct key *key_get_instantiation_authkey(key_serial_t target_id)
{
 char description[16];
 struct keyring_search_context ctx = {
  .index_key.type = &key_type_request_key_auth,
  .index_key.description = description,
  .cred = current_cred(),
  .match_data.cmp = key_default_cmp,
  .match_data.raw_data = description,
  .match_data.lookup_type = KEYRING_SEARCH_LOOKUP_DIRECT,
  .flags = (KEYRING_SEARCH_DO_STATE_CHECK |
        KEYRING_SEARCH_RECURSE),
 };
 struct key *authkey;
 key_ref_t authkey_ref;

 ctx.index_key.desc_len = sprintf(description, "%x", target_id);

 rcu_read_lock();
 authkey_ref = search_process_keyrings_rcu(&ctx);
 rcu_read_unlock();

 if (IS_ERR(authkey_ref)) {
  authkey = ERR_CAST(authkey_ref);
  if (authkey == ERR_PTR(-EAGAIN))
   authkey = ERR_PTR(-ENOKEY);
  goto error;
 }

 authkey = key_ref_to_ptr(authkey_ref);
 if (test_bit(KEY_FLAG_REVOKED, &authkey->flags)) {
  key_put(authkey);
  authkey = ERR_PTR(-EKEYREVOKED);
 }

error:
 return authkey;
}
