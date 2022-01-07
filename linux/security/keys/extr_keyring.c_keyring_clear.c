
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int sem; int keys; int * type; } ;
struct assoc_array_edit {int dummy; } ;


 int ENOTDIR ;
 scalar_t__ IS_ERR (struct assoc_array_edit*) ;
 int PTR_ERR (struct assoc_array_edit*) ;
 int assoc_array_apply_edit (struct assoc_array_edit*) ;
 struct assoc_array_edit* assoc_array_clear (int *,int *) ;
 int down_write (int *) ;
 int key_payload_reserve (struct key*,int ) ;
 int key_type_keyring ;
 int keyring_assoc_array_ops ;
 int up_write (int *) ;

int keyring_clear(struct key *keyring)
{
 struct assoc_array_edit *edit;
 int ret;

 if (keyring->type != &key_type_keyring)
  return -ENOTDIR;

 down_write(&keyring->sem);

 edit = assoc_array_clear(&keyring->keys, &keyring_assoc_array_ops);
 if (IS_ERR(edit)) {
  ret = PTR_ERR(edit);
 } else {
  if (edit)
   assoc_array_apply_edit(edit);
  key_payload_reserve(keyring, 0);
  ret = 0;
 }

 up_write(&keyring->sem);
 return ret;
}
