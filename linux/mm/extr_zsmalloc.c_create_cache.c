
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {int dummy; } ;
struct zs_pool {int * handle_cachep; void* zspage_cachep; } ;


 int ZS_HANDLE_SIZE ;
 void* kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (int *) ;

__attribute__((used)) static int create_cache(struct zs_pool *pool)
{
 pool->handle_cachep = kmem_cache_create("zs_handle", ZS_HANDLE_SIZE,
     0, 0, ((void*)0));
 if (!pool->handle_cachep)
  return 1;

 pool->zspage_cachep = kmem_cache_create("zspage", sizeof(struct zspage),
     0, 0, ((void*)0));
 if (!pool->zspage_cachep) {
  kmem_cache_destroy(pool->handle_cachep);
  pool->handle_cachep = ((void*)0);
  return 1;
 }

 return 0;
}
