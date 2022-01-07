
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key_serial_t ;
typedef int key_ref_t ;


 scalar_t__ IS_ERR (int ) ;
 int KEY_LOOKUP_CREATE ;
 int KEY_NEED_LINK ;
 int KEY_NEED_WRITE ;
 long PTR_ERR (int ) ;
 long key_link (int ,int ) ;
 int key_ref_put (int ) ;
 int key_ref_to_ptr (int ) ;
 int lookup_user_key (int ,int ,int ) ;

long keyctl_keyring_link(key_serial_t id, key_serial_t ringid)
{
 key_ref_t keyring_ref, key_ref;
 long ret;

 keyring_ref = lookup_user_key(ringid, KEY_LOOKUP_CREATE, KEY_NEED_WRITE);
 if (IS_ERR(keyring_ref)) {
  ret = PTR_ERR(keyring_ref);
  goto error;
 }

 key_ref = lookup_user_key(id, KEY_LOOKUP_CREATE, KEY_NEED_LINK);
 if (IS_ERR(key_ref)) {
  ret = PTR_ERR(key_ref);
  goto error2;
 }

 ret = key_link(key_ref_to_ptr(keyring_ref), key_ref_to_ptr(key_ref));

 key_ref_put(key_ref);
error2:
 key_ref_put(keyring_ref);
error:
 return ret;
}
