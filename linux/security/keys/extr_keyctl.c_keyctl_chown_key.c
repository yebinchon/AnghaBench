
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct key_user {int qnkeys; unsigned int qnbytes; int lock; int nikeys; int nkeys; } ;
struct key {unsigned int quotalen; scalar_t__ state; int sem; int gid; int uid; struct key_user* user; int flags; } ;
typedef int kuid_t ;
typedef int kgid_t ;
typedef int key_serial_t ;
typedef int key_ref_t ;
typedef scalar_t__ gid_t ;


 int CAP_SYS_ADMIN ;
 long EACCES ;
 long EDQUOT ;
 long EINVAL ;
 long ENOMEM ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ IS_ERR (int ) ;
 int KEY_FLAG_IN_QUOTA ;
 scalar_t__ KEY_IS_UNINSTANTIATED ;
 int KEY_LOOKUP_CREATE ;
 int KEY_LOOKUP_PARTIAL ;
 int KEY_NEED_SETATTR ;
 long PTR_ERR (int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int capable (int ) ;
 int current_user_ns () ;
 int down_write (int *) ;
 int gid_eq (int ,int ) ;
 int gid_valid (int ) ;
 int in_group_p (int ) ;
 int key_put (struct key*) ;
 unsigned int key_quota_maxbytes ;
 unsigned int key_quota_maxkeys ;
 unsigned int key_quota_root_maxbytes ;
 unsigned int key_quota_root_maxkeys ;
 struct key* key_ref_to_ptr (int ) ;
 struct key_user* key_user_lookup (int ) ;
 int key_user_put (struct key_user*) ;
 int lookup_user_key (int ,int,int ) ;
 int make_kgid (int ,scalar_t__) ;
 int make_kuid (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ uid_eq (int ,int ) ;
 int uid_valid (int ) ;
 int up_write (int *) ;

long keyctl_chown_key(key_serial_t id, uid_t user, gid_t group)
{
 struct key_user *newowner, *zapowner = ((void*)0);
 struct key *key;
 key_ref_t key_ref;
 long ret;
 kuid_t uid;
 kgid_t gid;

 uid = make_kuid(current_user_ns(), user);
 gid = make_kgid(current_user_ns(), group);
 ret = -EINVAL;
 if ((user != (uid_t) -1) && !uid_valid(uid))
  goto error;
 if ((group != (gid_t) -1) && !gid_valid(gid))
  goto error;

 ret = 0;
 if (user == (uid_t) -1 && group == (gid_t) -1)
  goto error;

 key_ref = lookup_user_key(id, KEY_LOOKUP_CREATE | KEY_LOOKUP_PARTIAL,
      KEY_NEED_SETATTR);
 if (IS_ERR(key_ref)) {
  ret = PTR_ERR(key_ref);
  goto error;
 }

 key = key_ref_to_ptr(key_ref);


 ret = -EACCES;
 down_write(&key->sem);

 if (!capable(CAP_SYS_ADMIN)) {

  if (user != (uid_t) -1 && !uid_eq(key->uid, uid))
   goto error_put;



  if (group != (gid_t) -1 && !gid_eq(gid, key->gid) && !in_group_p(gid))
   goto error_put;
 }


 if (user != (uid_t) -1 && !uid_eq(uid, key->uid)) {
  ret = -ENOMEM;
  newowner = key_user_lookup(uid);
  if (!newowner)
   goto error_put;


  if (test_bit(KEY_FLAG_IN_QUOTA, &key->flags)) {
   unsigned maxkeys = uid_eq(uid, GLOBAL_ROOT_UID) ?
    key_quota_root_maxkeys : key_quota_maxkeys;
   unsigned maxbytes = uid_eq(uid, GLOBAL_ROOT_UID) ?
    key_quota_root_maxbytes : key_quota_maxbytes;

   spin_lock(&newowner->lock);
   if (newowner->qnkeys + 1 >= maxkeys ||
       newowner->qnbytes + key->quotalen >= maxbytes ||
       newowner->qnbytes + key->quotalen <
       newowner->qnbytes)
    goto quota_overrun;

   newowner->qnkeys++;
   newowner->qnbytes += key->quotalen;
   spin_unlock(&newowner->lock);

   spin_lock(&key->user->lock);
   key->user->qnkeys--;
   key->user->qnbytes -= key->quotalen;
   spin_unlock(&key->user->lock);
  }

  atomic_dec(&key->user->nkeys);
  atomic_inc(&newowner->nkeys);

  if (key->state != KEY_IS_UNINSTANTIATED) {
   atomic_dec(&key->user->nikeys);
   atomic_inc(&newowner->nikeys);
  }

  zapowner = key->user;
  key->user = newowner;
  key->uid = uid;
 }


 if (group != (gid_t) -1)
  key->gid = gid;

 ret = 0;

error_put:
 up_write(&key->sem);
 key_put(key);
 if (zapowner)
  key_user_put(zapowner);
error:
 return ret;

quota_overrun:
 spin_unlock(&newowner->lock);
 zapowner = newowner;
 ret = -EDQUOT;
 goto error_put;
}
