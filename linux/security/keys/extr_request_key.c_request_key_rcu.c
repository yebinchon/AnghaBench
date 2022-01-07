
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* raw_data; int lookup_type; int cmp; } ;
struct TYPE_4__ {char const* description; int desc_len; struct key_tag* domain_tag; struct key_type* type; } ;
struct keyring_search_context {int flags; TYPE_1__ match_data; int cred; TYPE_2__ index_key; } ;
struct key_type {int name; } ;
struct key_tag {int dummy; } ;
struct key {int dummy; } ;
typedef int key_ref_t ;


 int EAGAIN ;
 int ENOKEY ;
 struct key* ERR_CAST (int ) ;
 struct key* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int KEYRING_SEARCH_DO_STATE_CHECK ;
 int KEYRING_SEARCH_LOOKUP_DIRECT ;
 int KEYRING_SEARCH_SKIP_EXPIRED ;
 int PTR_ERR (int ) ;
 int cache_requested_key (struct key*) ;
 struct key* check_cached_key (struct keyring_search_context*) ;
 int current_cred () ;
 int kenter (char*,int ,char const*) ;
 int key_default_cmp ;
 struct key* key_ref_to_ptr (int ) ;
 int kleave (char*,struct key*) ;
 int search_process_keyrings_rcu (struct keyring_search_context*) ;
 int strlen (char const*) ;

struct key *request_key_rcu(struct key_type *type,
       const char *description,
       struct key_tag *domain_tag)
{
 struct keyring_search_context ctx = {
  .index_key.type = type,
  .index_key.domain_tag = domain_tag,
  .index_key.description = description,
  .index_key.desc_len = strlen(description),
  .cred = current_cred(),
  .match_data.cmp = key_default_cmp,
  .match_data.raw_data = description,
  .match_data.lookup_type = KEYRING_SEARCH_LOOKUP_DIRECT,
  .flags = (KEYRING_SEARCH_DO_STATE_CHECK |
        KEYRING_SEARCH_SKIP_EXPIRED),
 };
 struct key *key;
 key_ref_t key_ref;

 kenter("%s,%s", type->name, description);

 key = check_cached_key(&ctx);
 if (key)
  return key;


 key_ref = search_process_keyrings_rcu(&ctx);
 if (IS_ERR(key_ref)) {
  key = ERR_CAST(key_ref);
  if (PTR_ERR(key_ref) == -EAGAIN)
   key = ERR_PTR(-ENOKEY);
 } else {
  key = key_ref_to_ptr(key_ref);
  cache_requested_key(key);
 }

 kleave(" = %p", key);
 return key;
}
