
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_cpu {int tid; int freelist; int page; } ;
struct kmem_cache {int dummy; } ;


 int CPUSLAB_FLUSH ;
 int deactivate_slab (struct kmem_cache*,int ,int ,struct kmem_cache_cpu*) ;
 int next_tid (int ) ;
 int stat (struct kmem_cache*,int ) ;

__attribute__((used)) static inline void flush_slab(struct kmem_cache *s, struct kmem_cache_cpu *c)
{
 stat(s, CPUSLAB_FLUSH);
 deactivate_slab(s, c->page, c->freelist, c);

 c->tid = next_tid(c->tid);
}
