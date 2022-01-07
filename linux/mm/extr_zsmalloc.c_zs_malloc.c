
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {int dummy; } ;
struct zs_pool {int pages_allocated; struct size_class** size_class; } ;
struct size_class {int lock; int objs_per_zspage; int pages_per_zspage; int index; } ;
typedef int gfp_t ;
typedef enum fullness_group { ____Placeholder_fullness_group } fullness_group ;


 int OBJ_ALLOCATED ;
 int SetZsPageMovable (struct zs_pool*,struct zspage*) ;
 scalar_t__ ZS_HANDLE_SIZE ;
 size_t ZS_MAX_ALLOC_SIZE ;
 struct zspage* alloc_zspage (struct zs_pool*,struct size_class*,int ) ;
 int atomic_long_add (int ,int *) ;
 unsigned long cache_alloc_handle (struct zs_pool*,int ) ;
 int cache_free_handle (struct zs_pool*,unsigned long) ;
 struct zspage* find_get_zspage (struct size_class*) ;
 int fix_fullness_group (struct size_class*,struct zspage*) ;
 int get_fullness_group (struct size_class*,struct zspage*) ;
 size_t get_size_class_index (size_t) ;
 int insert_zspage (struct size_class*,struct zspage*,int) ;
 scalar_t__ likely (struct zspage*) ;
 unsigned long obj_malloc (struct size_class*,struct zspage*,unsigned long) ;
 int record_obj (unsigned long,unsigned long) ;
 int set_zspage_mapping (struct zspage*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int zs_stat_inc (struct size_class*,int ,int ) ;

unsigned long zs_malloc(struct zs_pool *pool, size_t size, gfp_t gfp)
{
 unsigned long handle, obj;
 struct size_class *class;
 enum fullness_group newfg;
 struct zspage *zspage;

 if (unlikely(!size || size > ZS_MAX_ALLOC_SIZE))
  return 0;

 handle = cache_alloc_handle(pool, gfp);
 if (!handle)
  return 0;


 size += ZS_HANDLE_SIZE;
 class = pool->size_class[get_size_class_index(size)];

 spin_lock(&class->lock);
 zspage = find_get_zspage(class);
 if (likely(zspage)) {
  obj = obj_malloc(class, zspage, handle);

  fix_fullness_group(class, zspage);
  record_obj(handle, obj);
  spin_unlock(&class->lock);

  return handle;
 }

 spin_unlock(&class->lock);

 zspage = alloc_zspage(pool, class, gfp);
 if (!zspage) {
  cache_free_handle(pool, handle);
  return 0;
 }

 spin_lock(&class->lock);
 obj = obj_malloc(class, zspage, handle);
 newfg = get_fullness_group(class, zspage);
 insert_zspage(class, zspage, newfg);
 set_zspage_mapping(zspage, class->index, newfg);
 record_obj(handle, obj);
 atomic_long_add(class->pages_per_zspage,
    &pool->pages_allocated);
 zs_stat_inc(class, OBJ_ALLOCATED, class->objs_per_zspage);


 SetZsPageMovable(pool, zspage);
 spin_unlock(&class->lock);

 return handle;
}
