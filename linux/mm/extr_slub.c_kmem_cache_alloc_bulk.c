
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_cpu {int tid; void* freelist; } ;
struct kmem_cache {int object_size; int cpu_slab; } ;
typedef int gfp_t ;


 int NUMA_NO_NODE ;
 int _RET_IP_ ;
 void* ___slab_alloc (struct kmem_cache*,int ,int ,int ,struct kmem_cache_cpu*) ;
 int __kmem_cache_free_bulk (struct kmem_cache*,int,void**) ;
 void* get_freepointer (struct kmem_cache*,void*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int maybe_wipe_obj_freeptr (struct kmem_cache*,void*) ;
 int memset (void*,int ,int ) ;
 int next_tid (int ) ;
 int slab_post_alloc_hook (struct kmem_cache*,int ,int,void**) ;
 struct kmem_cache* slab_pre_alloc_hook (struct kmem_cache*,int ) ;
 int slab_want_init_on_alloc (int ,struct kmem_cache*) ;
 struct kmem_cache_cpu* this_cpu_ptr (int ) ;
 scalar_t__ unlikely (int) ;

int kmem_cache_alloc_bulk(struct kmem_cache *s, gfp_t flags, size_t size,
     void **p)
{
 struct kmem_cache_cpu *c;
 int i;


 s = slab_pre_alloc_hook(s, flags);
 if (unlikely(!s))
  return 0;





 local_irq_disable();
 c = this_cpu_ptr(s->cpu_slab);

 for (i = 0; i < size; i++) {
  void *object = c->freelist;

  if (unlikely(!object)) {




   p[i] = ___slab_alloc(s, flags, NUMA_NO_NODE,
         _RET_IP_, c);
   if (unlikely(!p[i]))
    goto error;

   c = this_cpu_ptr(s->cpu_slab);
   maybe_wipe_obj_freeptr(s, p[i]);

   continue;
  }
  c->freelist = get_freepointer(s, object);
  p[i] = object;
  maybe_wipe_obj_freeptr(s, p[i]);
 }
 c->tid = next_tid(c->tid);
 local_irq_enable();


 if (unlikely(slab_want_init_on_alloc(flags, s))) {
  int j;

  for (j = 0; j < i; j++)
   memset(p[j], 0, s->object_size);
 }


 slab_post_alloc_hook(s, flags, size, p);
 return i;
error:
 local_irq_enable();
 slab_post_alloc_hook(s, flags, i, p);
 __kmem_cache_free_bulk(s, i, p);
 return 0;
}
