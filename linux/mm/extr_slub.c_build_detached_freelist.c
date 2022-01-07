
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int slab_cache; } ;
struct kmem_cache {int dummy; } ;
struct detached_freelist {int cnt; int * freelist; int s; struct page* page; void* tail; } ;


 int BUG_ON (int) ;
 int PageCompound (struct page*) ;
 int PageSlab (struct page*) ;
 int __free_pages (struct page*,int ) ;
 int cache_from_obj (struct kmem_cache*,void*) ;
 int compound_order (struct page*) ;
 int kfree_hook (void*) ;
 int set_freepointer (int ,void*,int *) ;
 scalar_t__ unlikely (int) ;
 struct page* virt_to_head_page (void*) ;

__attribute__((used)) static inline
int build_detached_freelist(struct kmem_cache *s, size_t size,
       void **p, struct detached_freelist *df)
{
 size_t first_skipped_index = 0;
 int lookahead = 3;
 void *object;
 struct page *page;


 df->page = ((void*)0);

 do {
  object = p[--size];

 } while (!object && size);

 if (!object)
  return 0;

 page = virt_to_head_page(object);
 if (!s) {

  if (unlikely(!PageSlab(page))) {
   BUG_ON(!PageCompound(page));
   kfree_hook(object);
   __free_pages(page, compound_order(page));
   p[size] = ((void*)0);
   return size;
  }

  df->s = page->slab_cache;
 } else {
  df->s = cache_from_obj(s, object);
 }


 df->page = page;
 set_freepointer(df->s, object, ((void*)0));
 df->tail = object;
 df->freelist = object;
 p[size] = ((void*)0);
 df->cnt = 1;

 while (size) {
  object = p[--size];
  if (!object)
   continue;


  if (df->page == virt_to_head_page(object)) {

   set_freepointer(df->s, object, df->freelist);
   df->freelist = object;
   df->cnt++;
   p[size] = ((void*)0);

   continue;
  }


  if (!--lookahead)
   break;

  if (!first_skipped_index)
   first_skipped_index = size + 1;
 }

 return first_skipped_index;
}
