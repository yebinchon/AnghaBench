
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
struct detached_freelist {int cnt; int tail; int freelist; int page; int s; } ;


 scalar_t__ WARN_ON (int) ;
 int _RET_IP_ ;
 size_t build_detached_freelist (struct kmem_cache*,size_t,void**,struct detached_freelist*) ;
 scalar_t__ likely (size_t) ;
 int slab_free (int ,int ,int ,int ,int ,int ) ;

void kmem_cache_free_bulk(struct kmem_cache *s, size_t size, void **p)
{
 if (WARN_ON(!size))
  return;

 do {
  struct detached_freelist df;

  size = build_detached_freelist(s, size, p, &df);
  if (!df.page)
   continue;

  slab_free(df.s, df.page, df.freelist, df.tail, df.cnt,_RET_IP_);
 } while (likely(size));
}
