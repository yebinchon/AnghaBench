
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fat_cache {int cache_list; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct fat_cache *cache = (struct fat_cache *)foo;

 INIT_LIST_HEAD(&cache->cache_list);
}
