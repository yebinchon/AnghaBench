
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int keyring_sem; scalar_t__ persistent_keyring_register; } ;
struct keyring_index_key {char* description; int desc_len; int * type; } ;
struct key {long serial; } ;
typedef int kuid_t ;
typedef scalar_t__ key_ref_t ;
typedef int index_key ;


 int IS_ERR (scalar_t__) ;
 int KEY_NEED_LINK ;
 long PTR_ERR (scalar_t__) ;
 int current_cred () ;
 int down_read (int *) ;
 int down_write (int *) ;
 scalar_t__ find_key_to_update (scalar_t__,struct keyring_index_key*) ;
 int from_kuid (struct user_namespace*,int ) ;
 scalar_t__ key_create_persistent (struct user_namespace*,int ,struct keyring_index_key*) ;
 long key_link (struct key*,struct key*) ;
 int key_ref_put (scalar_t__) ;
 struct key* key_ref_to_ptr (scalar_t__) ;
 int key_set_index_key (struct keyring_index_key*) ;
 int key_set_timeout (struct key*,int ) ;
 long key_task_permission (scalar_t__,int ,int ) ;
 int key_type_keyring ;
 scalar_t__ make_key_ref (scalar_t__,int) ;
 int memset (struct keyring_index_key*,int ,int) ;
 int persistent_keyring_expiry ;
 int sprintf (char*,char*,int) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static long key_get_persistent(struct user_namespace *ns, kuid_t uid,
          key_ref_t dest_ref)
{
 struct keyring_index_key index_key;
 struct key *persistent;
 key_ref_t reg_ref, persistent_ref;
 char buf[32];
 long ret;


 memset(&index_key, 0, sizeof(index_key));
 index_key.type = &key_type_keyring;
 index_key.description = buf;
 index_key.desc_len = sprintf(buf, "_persistent.%u", from_kuid(ns, uid));
 key_set_index_key(&index_key);

 if (ns->persistent_keyring_register) {
  reg_ref = make_key_ref(ns->persistent_keyring_register, 1);
  down_read(&ns->keyring_sem);
  persistent_ref = find_key_to_update(reg_ref, &index_key);
  up_read(&ns->keyring_sem);

  if (persistent_ref)
   goto found;
 }




 down_write(&ns->keyring_sem);
 persistent_ref = key_create_persistent(ns, uid, &index_key);
 up_write(&ns->keyring_sem);
 if (!IS_ERR(persistent_ref))
  goto found;

 return PTR_ERR(persistent_ref);

found:
 ret = key_task_permission(persistent_ref, current_cred(), KEY_NEED_LINK);
 if (ret == 0) {
  persistent = key_ref_to_ptr(persistent_ref);
  ret = key_link(key_ref_to_ptr(dest_ref), persistent);
  if (ret == 0) {
   key_set_timeout(persistent, persistent_keyring_expiry);
   ret = persistent->serial;
  }
 }

 key_ref_put(persistent_ref);
 return ret;
}
