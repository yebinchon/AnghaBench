
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {long serial; } ;
typedef scalar_t__ key_serial_t ;


 long EINVAL ;
 scalar_t__ IS_ERR (struct key*) ;
 long PTR_ERR (struct key*) ;
 struct key* key_get_instantiation_authkey (scalar_t__) ;
 int key_put (struct key*) ;
 long keyctl_change_reqkey_auth (struct key*) ;

long keyctl_assume_authority(key_serial_t id)
{
 struct key *authkey;
 long ret;


 ret = -EINVAL;
 if (id < 0)
  goto error;


 if (id == 0) {
  ret = keyctl_change_reqkey_auth(((void*)0));
  goto error;
 }






 authkey = key_get_instantiation_authkey(id);
 if (IS_ERR(authkey)) {
  ret = PTR_ERR(authkey);
  goto error;
 }

 ret = keyctl_change_reqkey_auth(authkey);
 if (ret == 0)
  ret = authkey->serial;
 key_put(authkey);
error:
 return ret;
}
