
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int _RET_IP_ ;
 struct kmem_cache* cache_from_obj (struct kmem_cache*,void*) ;
 int slab_free (struct kmem_cache*,int ,void*,int *,int,int ) ;
 int trace_kmem_cache_free (int ,void*) ;
 int virt_to_head_page (void*) ;

void kmem_cache_free(struct kmem_cache *s, void *x)
{
 s = cache_from_obj(s, x);
 if (!s)
  return;
 slab_free(s, virt_to_head_page(x), x, ((void*)0), 1, _RET_IP_);
 trace_kmem_cache_free(_RET_IP_, x);
}
