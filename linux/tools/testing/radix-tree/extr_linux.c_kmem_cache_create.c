
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {size_t size; void (* ctor ) (void*) ;int * objs; scalar_t__ nr_objs; int lock; } ;


 struct kmem_cache* malloc (int) ;
 int pthread_mutex_init (int *,int *) ;

struct kmem_cache *
kmem_cache_create(const char *name, size_t size, size_t offset,
 unsigned long flags, void (*ctor)(void *))
{
 struct kmem_cache *ret = malloc(sizeof(*ret));

 pthread_mutex_init(&ret->lock, ((void*)0));
 ret->size = size;
 ret->nr_objs = 0;
 ret->objs = ((void*)0);
 ret->ctor = ctor;
 return ret;
}
