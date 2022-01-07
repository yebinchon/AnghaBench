
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int perm; int gid; int uid; } ;
struct cred {int group_info; int fsgid; int fsuid; } ;
typedef int key_ref_t ;
typedef int key_perm_t ;


 int EACCES ;
 int KEY_GRP_ALL ;
 int KEY_NEED_ALL ;
 scalar_t__ gid_eq (int ,int ) ;
 scalar_t__ gid_valid (int ) ;
 int groups_search (int ,int ) ;
 scalar_t__ is_key_possessed (int const) ;
 struct key* key_ref_to_ptr (int const) ;
 int security_key_permission (int const,struct cred const*,unsigned int) ;
 scalar_t__ uid_eq (int ,int ) ;

int key_task_permission(const key_ref_t key_ref, const struct cred *cred,
   unsigned perm)
{
 struct key *key;
 key_perm_t kperm;
 int ret;

 key = key_ref_to_ptr(key_ref);


 if (uid_eq(key->uid, cred->fsuid)) {
  kperm = key->perm >> 16;
  goto use_these_perms;
 }



 if (gid_valid(key->gid) && key->perm & KEY_GRP_ALL) {
  if (gid_eq(key->gid, cred->fsgid)) {
   kperm = key->perm >> 8;
   goto use_these_perms;
  }

  ret = groups_search(cred->group_info, key->gid);
  if (ret) {
   kperm = key->perm >> 8;
   goto use_these_perms;
  }
 }


 kperm = key->perm;

use_these_perms:




 if (is_key_possessed(key_ref))
  kperm |= key->perm >> 24;

 kperm = kperm & perm & KEY_NEED_ALL;

 if (kperm != perm)
  return -EACCES;


 return security_key_permission(key_ref, cred, perm);
}
