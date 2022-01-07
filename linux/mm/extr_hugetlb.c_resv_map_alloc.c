
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resv_map {int region_cache_count; int region_cache; int link; scalar_t__ adds_in_progress; int regions; int lock; int refs; } ;
struct file_region {int region_cache_count; int region_cache; int link; scalar_t__ adds_in_progress; int regions; int lock; int refs; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct resv_map*) ;
 struct resv_map* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int list_add (int *,int *) ;
 int spin_lock_init (int *) ;

struct resv_map *resv_map_alloc(void)
{
 struct resv_map *resv_map = kmalloc(sizeof(*resv_map), GFP_KERNEL);
 struct file_region *rg = kmalloc(sizeof(*rg), GFP_KERNEL);

 if (!resv_map || !rg) {
  kfree(resv_map);
  kfree(rg);
  return ((void*)0);
 }

 kref_init(&resv_map->refs);
 spin_lock_init(&resv_map->lock);
 INIT_LIST_HEAD(&resv_map->regions);

 resv_map->adds_in_progress = 0;

 INIT_LIST_HEAD(&resv_map->region_cache);
 list_add(&rg->link, &resv_map->region_cache);
 resv_map->region_cache_count = 1;

 return resv_map;
}
