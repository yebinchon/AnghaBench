
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tracing_map_entry {int key; struct tracing_map_elt* val; } ;
struct tracing_map_elt {int key; } ;
struct tracing_map {int map_bits; int map_size; int hits; int key_size; int drops; int map; } ;


 struct tracing_map_elt* READ_ONCE (struct tracing_map_elt*) ;
 struct tracing_map_entry* TRACING_MAP_ENTRY (int ,int) ;
 int atomic64_inc (int *) ;
 int cmpxchg (int*,int ,int) ;
 struct tracing_map_elt* get_free_elt (struct tracing_map*) ;
 int jhash (void*,int ,int ) ;
 scalar_t__ keys_match (void*,int ,int ) ;
 int memcpy (int ,void*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct tracing_map_elt *
__tracing_map_insert(struct tracing_map *map, void *key, bool lookup_only)
{
 u32 idx, key_hash, test_key;
 int dup_try = 0;
 struct tracing_map_entry *entry;
 struct tracing_map_elt *val;

 key_hash = jhash(key, map->key_size, 0);
 if (key_hash == 0)
  key_hash = 1;
 idx = key_hash >> (32 - (map->map_bits + 1));

 while (1) {
  idx &= (map->map_size - 1);
  entry = TRACING_MAP_ENTRY(map->map, idx);
  test_key = entry->key;

  if (test_key && test_key == key_hash) {
   val = READ_ONCE(entry->val);
   if (val &&
       keys_match(key, val->key, map->key_size)) {
    if (!lookup_only)
     atomic64_inc(&map->hits);
    return val;
   } else if (unlikely(!val)) {
    dup_try++;
    if (dup_try > map->map_size) {
     atomic64_inc(&map->drops);
     break;
    }
    continue;
   }
  }

  if (!test_key) {
   if (lookup_only)
    break;

   if (!cmpxchg(&entry->key, 0, key_hash)) {
    struct tracing_map_elt *elt;

    elt = get_free_elt(map);
    if (!elt) {
     atomic64_inc(&map->drops);
     entry->key = 0;
     break;
    }

    memcpy(elt->key, key, map->key_size);
    entry->val = elt;
    atomic64_inc(&map->hits);

    return entry->val;
   } else {




    dup_try++;
    continue;
   }
  }

  idx++;
 }

 return ((void*)0);
}
