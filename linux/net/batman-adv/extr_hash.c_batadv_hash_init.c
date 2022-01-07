
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct batadv_hashtable {size_t size; int generation; int * list_locks; int * table; } ;


 int INIT_HLIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void batadv_hash_init(struct batadv_hashtable *hash)
{
 u32 i;

 for (i = 0; i < hash->size; i++) {
  INIT_HLIST_HEAD(&hash->table[i]);
  spin_lock_init(&hash->list_locks[i]);
 }

 atomic_set(&hash->generation, 0);
}
