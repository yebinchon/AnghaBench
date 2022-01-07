
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* description; int desc_len; int * type; } ;
struct TYPE_5__ {char* raw_data; int lookup_type; int cmp; } ;
struct keyring_search_context {TYPE_2__ index_key; int flags; TYPE_1__ match_data; struct cred const* cred; } ;
struct key {int dummy; } ;
struct cred {TYPE_3__* user; TYPE_4__* user_ns; } ;
typedef int key_ref_t ;
typedef int buf ;
struct TYPE_8__ {int user_keyring_register; } ;
struct TYPE_7__ {int uid; } ;


 scalar_t__ IS_ERR (int ) ;
 int KEYRING_SEARCH_DO_STATE_CHECK ;
 int KEYRING_SEARCH_LOOKUP_DIRECT ;
 struct key* READ_ONCE (int ) ;
 int from_kuid (TYPE_4__*,int ) ;
 int key_default_cmp ;
 struct key* key_ref_to_ptr (int ) ;
 int key_type_keyring ;
 int keyring_search_rcu (int ,struct keyring_search_context*) ;
 int make_key_ref (struct key*,int) ;
 int snprintf (char*,int,char*,int) ;

struct key *get_user_session_keyring_rcu(const struct cred *cred)
{
 struct key *reg_keyring = READ_ONCE(cred->user_ns->user_keyring_register);
 key_ref_t session_keyring_r;
 char buf[20];

 struct keyring_search_context ctx = {
  .index_key.type = &key_type_keyring,
  .index_key.description = buf,
  .cred = cred,
  .match_data.cmp = key_default_cmp,
  .match_data.raw_data = buf,
  .match_data.lookup_type = KEYRING_SEARCH_LOOKUP_DIRECT,
  .flags = KEYRING_SEARCH_DO_STATE_CHECK,
 };

 if (!reg_keyring)
  return ((void*)0);

 ctx.index_key.desc_len = snprintf(buf, sizeof(buf), "_uid_ses.%u",
       from_kuid(cred->user_ns,
          cred->user->uid));

 session_keyring_r = keyring_search_rcu(make_key_ref(reg_keyring, 1),
            &ctx);
 if (IS_ERR(session_keyring_r))
  return ((void*)0);
 return key_ref_to_ptr(session_keyring_r);
}
