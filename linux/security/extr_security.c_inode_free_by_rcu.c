
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;


 int kmem_cache_free (int ,struct rcu_head*) ;
 int lsm_inode_cache ;

__attribute__((used)) static void inode_free_by_rcu(struct rcu_head *head)
{



 kmem_cache_free(lsm_inode_cache, head);
}
