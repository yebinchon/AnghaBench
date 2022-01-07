
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long counters; int frozen; int objects; int inuse; void* freelist; } ;
struct kmem_cache {int dummy; } ;


 int VM_BUG_ON (int) ;
 int __cmpxchg_double_slab (struct kmem_cache*,struct page*,void*,unsigned long,int *,unsigned long,char*) ;

__attribute__((used)) static inline void *get_freelist(struct kmem_cache *s, struct page *page)
{
 struct page new;
 unsigned long counters;
 void *freelist;

 do {
  freelist = page->freelist;
  counters = page->counters;

  new.counters = counters;
  VM_BUG_ON(!new.frozen);

  new.inuse = page->objects;
  new.frozen = freelist != ((void*)0);

 } while (!__cmpxchg_double_slab(s, page,
  freelist, counters,
  ((void*)0), new.counters,
  "get_freelist"));

 return freelist;
}
