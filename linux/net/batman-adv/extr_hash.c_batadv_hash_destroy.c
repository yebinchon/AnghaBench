
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_hashtable {struct batadv_hashtable* table; struct batadv_hashtable* list_locks; } ;


 int kfree (struct batadv_hashtable*) ;

void batadv_hash_destroy(struct batadv_hashtable *hash)
{
 kfree(hash->list_locks);
 kfree(hash->table);
 kfree(hash);
}
