
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int keys; } ;
struct assoc_array_edit {int dummy; } ;


 int IS_ERR (struct assoc_array_edit*) ;
 int assoc_array_apply_edit (struct assoc_array_edit*) ;
 struct assoc_array_edit* assoc_array_clear (int *,int *) ;
 int key_payload_reserve (struct key*,int ) ;
 int keyring_assoc_array_ops ;

__attribute__((used)) static void keyring_revoke(struct key *keyring)
{
 struct assoc_array_edit *edit;

 edit = assoc_array_clear(&keyring->keys, &keyring_assoc_array_ops);
 if (!IS_ERR(edit)) {
  if (edit)
   assoc_array_apply_edit(edit);
  key_payload_reserve(keyring, 0);
 }
}
