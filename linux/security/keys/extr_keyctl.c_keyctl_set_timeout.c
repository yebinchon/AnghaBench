
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int flags; } ;
typedef int key_serial_t ;
typedef struct key* key_ref_t ;


 long EACCES ;
 long EPERM ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_FLAG_KEEP ;
 int KEY_LOOKUP_CREATE ;
 int KEY_LOOKUP_PARTIAL ;
 int KEY_NEED_SETATTR ;
 long PTR_ERR (struct key*) ;
 struct key* key_get_instantiation_authkey (int ) ;
 int key_put (struct key*) ;
 struct key* key_ref_to_ptr (struct key*) ;
 int key_set_timeout (struct key*,unsigned int) ;
 struct key* lookup_user_key (int ,int,int ) ;
 scalar_t__ test_bit (int ,int *) ;

long keyctl_set_timeout(key_serial_t id, unsigned timeout)
{
 struct key *key, *instkey;
 key_ref_t key_ref;
 long ret;

 key_ref = lookup_user_key(id, KEY_LOOKUP_CREATE | KEY_LOOKUP_PARTIAL,
      KEY_NEED_SETATTR);
 if (IS_ERR(key_ref)) {


  if (PTR_ERR(key_ref) == -EACCES) {
   instkey = key_get_instantiation_authkey(id);
   if (!IS_ERR(instkey)) {
    key_put(instkey);
    key_ref = lookup_user_key(id,
         KEY_LOOKUP_PARTIAL,
         0);
    if (!IS_ERR(key_ref))
     goto okay;
   }
  }

  ret = PTR_ERR(key_ref);
  goto error;
 }

okay:
 key = key_ref_to_ptr(key_ref);
 ret = 0;
 if (test_bit(KEY_FLAG_KEEP, &key->flags))
  ret = -EPERM;
 else
  key_set_timeout(key, timeout);
 key_put(key);

error:
 return ret;
}
