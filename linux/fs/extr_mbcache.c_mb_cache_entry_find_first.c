
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mb_cache_entry {int dummy; } ;
struct mb_cache {int dummy; } ;


 struct mb_cache_entry* __entry_find (struct mb_cache*,int *,int ) ;

struct mb_cache_entry *mb_cache_entry_find_first(struct mb_cache *cache,
       u32 key)
{
 return __entry_find(cache, ((void*)0), key);
}
