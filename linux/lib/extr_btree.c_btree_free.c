
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btree_cachep ;
 int kmem_cache_free (int ,void*) ;

void btree_free(void *element, void *pool_data)
{
 kmem_cache_free(btree_cachep, element);
}
