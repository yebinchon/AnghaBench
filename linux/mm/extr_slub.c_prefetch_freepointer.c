
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int offset; } ;


 int prefetch (void*) ;

__attribute__((used)) static void prefetch_freepointer(const struct kmem_cache *s, void *object)
{
 prefetch(object + s->offset);
}
