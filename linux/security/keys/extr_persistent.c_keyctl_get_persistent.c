
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct user_namespace {int dummy; } ;
typedef int kuid_t ;
typedef int key_serial_t ;
typedef int key_ref_t ;
struct TYPE_2__ {int * type; } ;


 int CAP_SETUID ;
 long EINVAL ;
 long ENOTDIR ;
 long EPERM ;
 scalar_t__ IS_ERR (int ) ;
 int KEY_LOOKUP_CREATE ;
 int KEY_NEED_WRITE ;
 long PTR_ERR (int ) ;
 int current_euid () ;
 int current_uid () ;
 struct user_namespace* current_user_ns () ;
 long key_get_persistent (struct user_namespace*,int ,int ) ;
 int key_ref_put (int ) ;
 TYPE_1__* key_ref_to_ptr (int ) ;
 int key_type_keyring ;
 int lookup_user_key (int ,int ,int ) ;
 int make_kuid (struct user_namespace*,int ) ;
 int ns_capable (struct user_namespace*,int ) ;
 int uid_eq (int ,int ) ;
 int uid_valid (int ) ;

long keyctl_get_persistent(uid_t _uid, key_serial_t destid)
{
 struct user_namespace *ns = current_user_ns();
 key_ref_t dest_ref;
 kuid_t uid;
 long ret;


 if (_uid == (uid_t)-1) {
  uid = current_uid();
 } else {
  uid = make_kuid(ns, _uid);
  if (!uid_valid(uid))
   return -EINVAL;




  if (!uid_eq(uid, current_uid()) &&
      !uid_eq(uid, current_euid()) &&
      !ns_capable(ns, CAP_SETUID))
   return -EPERM;
 }


 dest_ref = lookup_user_key(destid, KEY_LOOKUP_CREATE, KEY_NEED_WRITE);
 if (IS_ERR(dest_ref))
  return PTR_ERR(dest_ref);
 if (key_ref_to_ptr(dest_ref)->type != &key_type_keyring) {
  ret = -ENOTDIR;
  goto out_put_dest;
 }

 ret = key_get_persistent(ns, uid, dest_ref);

out_put_dest:
 key_ref_put(dest_ref);
 return ret;
}
