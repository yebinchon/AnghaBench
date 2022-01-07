
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_key_auth {int dest_keyring; } ;
struct key {int dummy; } ;
typedef scalar_t__ key_serial_t ;
typedef int key_ref_t ;


 long EINVAL ;
 long ENOKEY ;
 scalar_t__ IS_ERR (int ) ;
 int KEY_LOOKUP_CREATE ;
 int KEY_NEED_WRITE ;
 scalar_t__ KEY_SPEC_REQKEY_AUTH_KEY ;
 scalar_t__ KEY_SPEC_REQUESTOR_KEYRING ;
 long PTR_ERR (int ) ;
 struct key* key_get (int ) ;
 struct key* key_ref_to_ptr (int ) ;
 int lookup_user_key (scalar_t__,int ,int ) ;

__attribute__((used)) static long get_instantiation_keyring(key_serial_t ringid,
          struct request_key_auth *rka,
          struct key **_dest_keyring)
{
 key_ref_t dkref;

 *_dest_keyring = ((void*)0);


 if (ringid == 0)
  return 0;


 if (ringid > 0) {
  dkref = lookup_user_key(ringid, KEY_LOOKUP_CREATE, KEY_NEED_WRITE);
  if (IS_ERR(dkref))
   return PTR_ERR(dkref);
  *_dest_keyring = key_ref_to_ptr(dkref);
  return 0;
 }

 if (ringid == KEY_SPEC_REQKEY_AUTH_KEY)
  return -EINVAL;



 if (ringid >= KEY_SPEC_REQUESTOR_KEYRING) {
  *_dest_keyring = key_get(rka->dest_keyring);
  return 0;
 }

 return -ENOKEY;
}
