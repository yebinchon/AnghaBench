
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb_cache_entry {int e_referenced; } ;
struct mb_cache {int dummy; } ;



void mb_cache_entry_touch(struct mb_cache *cache,
     struct mb_cache_entry *entry)
{
 entry->e_referenced = 1;
}
