
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int flags; } ;
typedef int key_serial_t ;
typedef int key_ref_t ;


 long EPERM ;
 scalar_t__ IS_ERR (int ) ;
 int KEY_FLAG_KEEP ;
 int KEY_LOOKUP_FOR_UNLINK ;
 int KEY_NEED_WRITE ;
 long PTR_ERR (int ) ;
 int key_ref_put (int ) ;
 struct key* key_ref_to_ptr (int ) ;
 long key_unlink (struct key*,struct key*) ;
 int lookup_user_key (int ,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

long keyctl_keyring_unlink(key_serial_t id, key_serial_t ringid)
{
 key_ref_t keyring_ref, key_ref;
 struct key *keyring, *key;
 long ret;

 keyring_ref = lookup_user_key(ringid, 0, KEY_NEED_WRITE);
 if (IS_ERR(keyring_ref)) {
  ret = PTR_ERR(keyring_ref);
  goto error;
 }

 key_ref = lookup_user_key(id, KEY_LOOKUP_FOR_UNLINK, 0);
 if (IS_ERR(key_ref)) {
  ret = PTR_ERR(key_ref);
  goto error2;
 }

 keyring = key_ref_to_ptr(keyring_ref);
 key = key_ref_to_ptr(key_ref);
 if (test_bit(KEY_FLAG_KEEP, &keyring->flags) &&
     test_bit(KEY_FLAG_KEEP, &key->flags))
  ret = -EPERM;
 else
  ret = key_unlink(keyring, key);

 key_ref_put(key_ref);
error2:
 key_ref_put(keyring_ref);
error:
 return ret;
}
