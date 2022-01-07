
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_pool {struct size_class** size_class; int migration_wait; int name; } ;
struct size_class {int size; int index; int pages_per_zspage; int objs_per_zspage; int * fullness_list; int lock; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NR_ZS_FULLNESS ;
 int PAGE_SIZE ;
 int ZS_EMPTY ;
 int ZS_HANDLE_SIZE ;
 int ZS_MAX_ALLOC_SIZE ;
 int ZS_MIN_ALLOC_SIZE ;
 int ZS_SIZE_CLASSES ;
 int ZS_SIZE_CLASS_DELTA ;
 scalar_t__ can_merge (struct size_class*,int,int) ;
 scalar_t__ create_cache (struct zs_pool*) ;
 int get_pages_per_zspage (int) ;
 int huge_class_size ;
 int init_deferred_free (struct zs_pool*) ;
 int init_waitqueue_head (int *) ;
 int kstrdup (char const*,int ) ;
 void* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int zs_destroy_pool (struct zs_pool*) ;
 int zs_pool_stat_create (struct zs_pool*,char const*) ;
 scalar_t__ zs_register_migration (struct zs_pool*) ;
 int zs_register_shrinker (struct zs_pool*) ;

struct zs_pool *zs_create_pool(const char *name)
{
 int i;
 struct zs_pool *pool;
 struct size_class *prev_class = ((void*)0);

 pool = kzalloc(sizeof(*pool), GFP_KERNEL);
 if (!pool)
  return ((void*)0);

 init_deferred_free(pool);

 pool->name = kstrdup(name, GFP_KERNEL);
 if (!pool->name)
  goto err;





 if (create_cache(pool))
  goto err;





 for (i = ZS_SIZE_CLASSES - 1; i >= 0; i--) {
  int size;
  int pages_per_zspage;
  int objs_per_zspage;
  struct size_class *class;
  int fullness = 0;

  size = ZS_MIN_ALLOC_SIZE + i * ZS_SIZE_CLASS_DELTA;
  if (size > ZS_MAX_ALLOC_SIZE)
   size = ZS_MAX_ALLOC_SIZE;
  pages_per_zspage = get_pages_per_zspage(size);
  objs_per_zspage = pages_per_zspage * PAGE_SIZE / size;







  if (pages_per_zspage != 1 && objs_per_zspage != 1 &&
    !huge_class_size) {
   huge_class_size = size;
   huge_class_size -= (ZS_HANDLE_SIZE - 1);
  }
  if (prev_class) {
   if (can_merge(prev_class, pages_per_zspage, objs_per_zspage)) {
    pool->size_class[i] = prev_class;
    continue;
   }
  }

  class = kzalloc(sizeof(struct size_class), GFP_KERNEL);
  if (!class)
   goto err;

  class->size = size;
  class->index = i;
  class->pages_per_zspage = pages_per_zspage;
  class->objs_per_zspage = objs_per_zspage;
  spin_lock_init(&class->lock);
  pool->size_class[i] = class;
  for (fullness = ZS_EMPTY; fullness < NR_ZS_FULLNESS;
       fullness++)
   INIT_LIST_HEAD(&class->fullness_list[fullness]);

  prev_class = class;
 }


 zs_pool_stat_create(pool, name);

 if (zs_register_migration(pool))
  goto err;







 zs_register_shrinker(pool);

 return pool;

err:
 zs_destroy_pool(pool);
 return ((void*)0);
}
