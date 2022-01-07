
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {unsigned long offset; } ;


 int BUG_ON (int) ;
 void* freelist_ptr (struct kmem_cache*,void*,unsigned long) ;

__attribute__((used)) static inline void set_freepointer(struct kmem_cache *s, void *object, void *fp)
{
 unsigned long freeptr_addr = (unsigned long)object + s->offset;





 *(void **)freeptr_addr = freelist_ptr(s, fp, freeptr_addr);
}
