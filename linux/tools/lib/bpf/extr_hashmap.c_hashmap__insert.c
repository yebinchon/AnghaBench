
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {void* key; void* value; } ;
struct hashmap {int sz; int * buckets; int cap_bits; int ctx; int (* hash_fn ) (void const*,int ) ;} ;
typedef enum hashmap_insert_strategy { ____Placeholder_hashmap_insert_strategy } hashmap_insert_strategy ;


 int EEXIST ;
 int ENOENT ;
 int ENOMEM ;
 int HASHMAP_ADD ;
 int HASHMAP_APPEND ;
 int HASHMAP_SET ;
 int HASHMAP_UPDATE ;
 size_t hash_bits (int ,int ) ;
 int hashmap_add_entry (int *,struct hashmap_entry*) ;
 scalar_t__ hashmap_find_entry (struct hashmap*,void const*,size_t,int *,struct hashmap_entry**) ;
 int hashmap_grow (struct hashmap*) ;
 scalar_t__ hashmap_needs_to_grow (struct hashmap*) ;
 struct hashmap_entry* malloc (int) ;
 int stub1 (void const*,int ) ;
 int stub2 (void const*,int ) ;

int hashmap__insert(struct hashmap *map, const void *key, void *value,
      enum hashmap_insert_strategy strategy,
      const void **old_key, void **old_value)
{
 struct hashmap_entry *entry;
 size_t h;
 int err;

 if (old_key)
  *old_key = ((void*)0);
 if (old_value)
  *old_value = ((void*)0);

 h = hash_bits(map->hash_fn(key, map->ctx), map->cap_bits);
 if (strategy != HASHMAP_APPEND &&
     hashmap_find_entry(map, key, h, ((void*)0), &entry)) {
  if (old_key)
   *old_key = entry->key;
  if (old_value)
   *old_value = entry->value;

  if (strategy == HASHMAP_SET || strategy == HASHMAP_UPDATE) {
   entry->key = key;
   entry->value = value;
   return 0;
  } else if (strategy == HASHMAP_ADD) {
   return -EEXIST;
  }
 }

 if (strategy == HASHMAP_UPDATE)
  return -ENOENT;

 if (hashmap_needs_to_grow(map)) {
  err = hashmap_grow(map);
  if (err)
   return err;
  h = hash_bits(map->hash_fn(key, map->ctx), map->cap_bits);
 }

 entry = malloc(sizeof(struct hashmap_entry));
 if (!entry)
  return -ENOMEM;

 entry->key = key;
 entry->value = value;
 hashmap_add_entry(&map->buckets[h], entry);
 map->sz++;

 return 0;
}
