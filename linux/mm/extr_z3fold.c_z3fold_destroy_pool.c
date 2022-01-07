
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_pool {int release_wq; int compact_wq; int c_handle; } ;


 int destroy_workqueue (int ) ;
 int kfree (struct z3fold_pool*) ;
 int kmem_cache_destroy (int ) ;
 int z3fold_unregister_migration (struct z3fold_pool*) ;

__attribute__((used)) static void z3fold_destroy_pool(struct z3fold_pool *pool)
{
 kmem_cache_destroy(pool->c_handle);
 destroy_workqueue(pool->compact_wq);
 destroy_workqueue(pool->release_wq);
 z3fold_unregister_migration(pool);
 kfree(pool);
}
