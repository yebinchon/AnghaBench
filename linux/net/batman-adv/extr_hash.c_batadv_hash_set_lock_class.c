
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct lock_class_key {int dummy; } ;
struct batadv_hashtable {size_t size; int * list_locks; } ;


 int lockdep_set_class (int *,struct lock_class_key*) ;

void batadv_hash_set_lock_class(struct batadv_hashtable *hash,
    struct lock_class_key *key)
{
 u32 i;

 for (i = 0; i < hash->size; i++)
  lockdep_set_class(&hash->list_locks[i], key);
}
