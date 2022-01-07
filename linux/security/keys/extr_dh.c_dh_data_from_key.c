
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct user_key_payload {int datalen; int data; } ;
struct key {int sem; int * type; } ;
typedef int ssize_t ;
typedef int key_serial_t ;
typedef int key_ref_t ;


 int ENOKEY ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int KEY_NEED_READ ;
 int down_read (int *) ;
 int key_put (struct key*) ;
 struct key* key_ref_to_ptr (int ) ;
 int key_type_user ;
 long key_validate (struct key*) ;
 int * kmemdup (int ,int ,int ) ;
 int lookup_user_key (int ,int ,int ) ;
 int up_read (int *) ;
 struct user_key_payload* user_key_payload_locked (struct key*) ;

__attribute__((used)) static ssize_t dh_data_from_key(key_serial_t keyid, void **data)
{
 struct key *key;
 key_ref_t key_ref;
 long status;
 ssize_t ret;

 key_ref = lookup_user_key(keyid, 0, KEY_NEED_READ);
 if (IS_ERR(key_ref)) {
  ret = -ENOKEY;
  goto error;
 }

 key = key_ref_to_ptr(key_ref);

 ret = -EOPNOTSUPP;
 if (key->type == &key_type_user) {
  down_read(&key->sem);
  status = key_validate(key);
  if (status == 0) {
   const struct user_key_payload *payload;
   uint8_t *duplicate;

   payload = user_key_payload_locked(key);

   duplicate = kmemdup(payload->data, payload->datalen,
         GFP_KERNEL);
   if (duplicate) {
    *data = duplicate;
    ret = payload->datalen;
   } else {
    ret = -ENOMEM;
   }
  }
  up_read(&key->sem);
 }

 key_put(key);
error:
 return ret;
}
