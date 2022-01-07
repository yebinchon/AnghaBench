
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct batadv_hashtable {struct batadv_hashtable* table; int size; void* list_locks; } ;


 int GFP_ATOMIC ;
 int batadv_hash_init (struct batadv_hashtable*) ;
 int kfree (struct batadv_hashtable*) ;
 struct batadv_hashtable* kmalloc (int,int ) ;
 void* kmalloc_array (int ,int,int ) ;

struct batadv_hashtable *batadv_hash_new(u32 size)
{
 struct batadv_hashtable *hash;

 hash = kmalloc(sizeof(*hash), GFP_ATOMIC);
 if (!hash)
  return ((void*)0);

 hash->table = kmalloc_array(size, sizeof(*hash->table), GFP_ATOMIC);
 if (!hash->table)
  goto free_hash;

 hash->list_locks = kmalloc_array(size, sizeof(*hash->list_locks),
      GFP_ATOMIC);
 if (!hash->list_locks)
  goto free_table;

 hash->size = size;
 batadv_hash_init(hash);
 return hash;

free_table:
 kfree(hash->table);
free_hash:
 kfree(hash);
 return ((void*)0);
}
