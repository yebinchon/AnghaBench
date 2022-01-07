
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {unsigned long offset; } ;
typedef int p ;


 int debug_pagealloc_enabled () ;
 void* freelist_ptr (struct kmem_cache*,void*,unsigned long) ;
 void* get_freepointer (struct kmem_cache*,void*) ;
 int probe_kernel_read (void**,void**,int) ;

__attribute__((used)) static inline void *get_freepointer_safe(struct kmem_cache *s, void *object)
{
 unsigned long freepointer_addr;
 void *p;

 if (!debug_pagealloc_enabled())
  return get_freepointer(s, object);

 freepointer_addr = (unsigned long)object + s->offset;
 probe_kernel_read(&p, (void **)freepointer_addr, sizeof(p));
 return freelist_ptr(s, p, freepointer_addr);
}
