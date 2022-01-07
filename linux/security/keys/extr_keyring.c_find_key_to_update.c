
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keyring_index_key {int description; TYPE_1__* type; } ;
struct key {int flags; int serial; int keys; } ;
typedef int * key_ref_t ;
struct TYPE_2__ {int name; } ;


 int KEY_FLAG_INVALIDATED ;
 int KEY_FLAG_REVOKED ;
 int __key_get (struct key*) ;
 void* assoc_array_find (int *,int *,struct keyring_index_key const*) ;
 int is_key_possessed (int *) ;
 int kenter (char*,int ,int ,int ) ;
 struct key* key_ref_to_ptr (int *) ;
 int keyring_assoc_array_ops ;
 struct key* keyring_ptr_to_key (void const*) ;
 int kleave (char*,...) ;
 int * make_key_ref (struct key*,int ) ;

key_ref_t find_key_to_update(key_ref_t keyring_ref,
        const struct keyring_index_key *index_key)
{
 struct key *keyring, *key;
 const void *object;

 keyring = key_ref_to_ptr(keyring_ref);

 kenter("{%d},{%s,%s}",
        keyring->serial, index_key->type->name, index_key->description);

 object = assoc_array_find(&keyring->keys, &keyring_assoc_array_ops,
      index_key);

 if (object)
  goto found;

 kleave(" = NULL");
 return ((void*)0);

found:
 key = keyring_ptr_to_key(object);
 if (key->flags & ((1 << KEY_FLAG_INVALIDATED) |
     (1 << KEY_FLAG_REVOKED))) {
  kleave(" = NULL [x]");
  return ((void*)0);
 }
 __key_get(key);
 kleave(" = {%d}", key->serial);
 return make_key_ref(key, is_key_possessed(keyring_ref));
}
