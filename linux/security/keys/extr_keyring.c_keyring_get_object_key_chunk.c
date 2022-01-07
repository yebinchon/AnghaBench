
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int index_key; } ;


 unsigned long keyring_get_key_chunk (int *,int) ;
 struct key* keyring_ptr_to_key (void const*) ;

__attribute__((used)) static unsigned long keyring_get_object_key_chunk(const void *object, int level)
{
 const struct key *key = keyring_ptr_to_key(object);
 return keyring_get_key_chunk(&key->index_key, level);
}
