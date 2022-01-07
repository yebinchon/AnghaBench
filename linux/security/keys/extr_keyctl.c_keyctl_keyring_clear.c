
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int flags; } ;
typedef int key_serial_t ;
typedef int key_ref_t ;


 int CAP_SYS_ADMIN ;
 long EPERM ;
 scalar_t__ IS_ERR (int ) ;
 int KEY_FLAG_KEEP ;
 int KEY_FLAG_ROOT_CAN_CLEAR ;
 int KEY_LOOKUP_CREATE ;
 int KEY_NEED_WRITE ;
 long PTR_ERR (int ) ;
 scalar_t__ capable (int ) ;
 int key_ref_put (int ) ;
 struct key* key_ref_to_ptr (int ) ;
 long keyring_clear (struct key*) ;
 int lookup_user_key (int ,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

long keyctl_keyring_clear(key_serial_t ringid)
{
 key_ref_t keyring_ref;
 struct key *keyring;
 long ret;

 keyring_ref = lookup_user_key(ringid, KEY_LOOKUP_CREATE, KEY_NEED_WRITE);
 if (IS_ERR(keyring_ref)) {
  ret = PTR_ERR(keyring_ref);


  if (capable(CAP_SYS_ADMIN)) {
   keyring_ref = lookup_user_key(ringid, 0, 0);
   if (IS_ERR(keyring_ref))
    goto error;
   if (test_bit(KEY_FLAG_ROOT_CAN_CLEAR,
         &key_ref_to_ptr(keyring_ref)->flags))
    goto clear;
   goto error_put;
  }

  goto error;
 }

clear:
 keyring = key_ref_to_ptr(keyring_ref);
 if (test_bit(KEY_FLAG_KEEP, &keyring->flags))
  ret = -EPERM;
 else
  ret = keyring_clear(keyring);
error_put:
 key_ref_put(keyring_ref);
error:
 return ret;
}
