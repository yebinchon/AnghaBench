
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int key; struct key_type* (* lookup_restriction ) (char const*) ;} ;
struct key_restriction {int key; struct key_type* (* lookup_restriction ) (char const*) ;} ;
struct key {int sem; struct key_type* restrict_link; int * type; } ;
typedef int key_ref_t ;


 int EDEADLK ;
 int EEXIST ;
 int ENOENT ;
 int ENOTDIR ;
 scalar_t__ IS_ERR (struct key_type*) ;
 int PTR_ERR (struct key_type*) ;
 int down_write (int *) ;
 int key_check (struct key*) ;
 int key_put (int ) ;
 struct key* key_ref_to_ptr (int ) ;
 int key_type_keyring ;
 struct key_type* key_type_lookup (char const*) ;
 int key_type_put (struct key_type*) ;
 scalar_t__ keyring_detect_restriction_cycle (struct key*,struct key_type*) ;
 struct key_type* keyring_restriction_alloc (int ) ;
 int keyring_serialise_restrict_sem ;
 int kfree (struct key_type*) ;
 int restrict_link_reject ;
 struct key_type* stub1 (char const*) ;
 int up_write (int *) ;

int keyring_restrict(key_ref_t keyring_ref, const char *type,
       const char *restriction)
{
 struct key *keyring;
 struct key_type *restrict_type = ((void*)0);
 struct key_restriction *restrict_link;
 int ret = 0;

 keyring = key_ref_to_ptr(keyring_ref);
 key_check(keyring);

 if (keyring->type != &key_type_keyring)
  return -ENOTDIR;

 if (!type) {
  restrict_link = keyring_restriction_alloc(restrict_link_reject);
 } else {
  restrict_type = key_type_lookup(type);

  if (IS_ERR(restrict_type))
   return PTR_ERR(restrict_type);

  if (!restrict_type->lookup_restriction) {
   ret = -ENOENT;
   goto error;
  }

  restrict_link = restrict_type->lookup_restriction(restriction);
 }

 if (IS_ERR(restrict_link)) {
  ret = PTR_ERR(restrict_link);
  goto error;
 }

 down_write(&keyring->sem);
 down_write(&keyring_serialise_restrict_sem);

 if (keyring->restrict_link)
  ret = -EEXIST;
 else if (keyring_detect_restriction_cycle(keyring, restrict_link))
  ret = -EDEADLK;
 else
  keyring->restrict_link = restrict_link;

 up_write(&keyring_serialise_restrict_sem);
 up_write(&keyring->sem);

 if (ret < 0) {
  key_put(restrict_link->key);
  kfree(restrict_link);
 }

error:
 if (restrict_type)
  key_type_put(restrict_type);

 return ret;
}
