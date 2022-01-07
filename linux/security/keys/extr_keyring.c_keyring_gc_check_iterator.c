
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct key {int dummy; } ;


 int key_check (struct key const*) ;
 int key_is_dead (struct key const*,int ) ;
 struct key* keyring_ptr_to_key (void const*) ;

__attribute__((used)) static int keyring_gc_check_iterator(const void *object, void *iterator_data)
{
 const struct key *key = keyring_ptr_to_key(object);
 time64_t *limit = iterator_data;

 key_check(key);
 return key_is_dead(key, *limit);
}
