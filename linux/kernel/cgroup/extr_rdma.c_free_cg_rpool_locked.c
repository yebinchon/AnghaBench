
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdmacg_resource_pool {int dev_node; int cg_node; } ;


 int kfree (struct rdmacg_resource_pool*) ;
 int list_del (int *) ;
 int lockdep_assert_held (int *) ;
 int rdmacg_mutex ;

__attribute__((used)) static void free_cg_rpool_locked(struct rdmacg_resource_pool *rpool)
{
 lockdep_assert_held(&rdmacg_mutex);

 list_del(&rpool->cg_node);
 list_del(&rpool->dev_node);
 kfree(rpool);
}
