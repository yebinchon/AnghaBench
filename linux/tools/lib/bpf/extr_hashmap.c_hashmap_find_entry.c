
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {int key; struct hashmap_entry* next; } ;
struct hashmap {int ctx; scalar_t__ (* equal_fn ) (int ,void const*,int ) ;struct hashmap_entry** buckets; } ;


 scalar_t__ stub1 (int ,void const*,int ) ;

__attribute__((used)) static bool hashmap_find_entry(const struct hashmap *map,
          const void *key, size_t hash,
          struct hashmap_entry ***pprev,
          struct hashmap_entry **entry)
{
 struct hashmap_entry *cur, **prev_ptr;

 if (!map->buckets)
  return 0;

 for (prev_ptr = &map->buckets[hash], cur = *prev_ptr;
      cur;
      prev_ptr = &cur->next, cur = cur->next) {
  if (map->equal_fn(cur->key, key, map->ctx)) {
   if (pprev)
    *pprev = prev_ptr;
   *entry = cur;
   return 1;
  }
 }

 return 0;
}
