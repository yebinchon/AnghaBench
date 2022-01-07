
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct key {int dummy; } ;


 int key_get (struct key*) ;
 scalar_t__ key_is_dead (struct key*,int ) ;
 struct key* keyring_ptr_to_key (void*) ;

__attribute__((used)) static bool keyring_gc_select_iterator(void *object, void *iterator_data)
{
 struct key *key = keyring_ptr_to_key(object);
 time64_t *limit = iterator_data;

 if (key_is_dead(key, *limit))
  return 0;
 key_get(key);
 return 1;
}
