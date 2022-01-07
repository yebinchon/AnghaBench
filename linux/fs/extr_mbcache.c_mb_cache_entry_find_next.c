
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb_cache_entry {int e_key; } ;
struct mb_cache {int dummy; } ;


 struct mb_cache_entry* __entry_find (struct mb_cache*,struct mb_cache_entry*,int ) ;

struct mb_cache_entry *mb_cache_entry_find_next(struct mb_cache *cache,
      struct mb_cache_entry *entry)
{
 return __entry_find(cache, entry, entry->e_key);
}
