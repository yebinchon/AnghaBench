
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int nilfs_btree_path_cache ;
 int nilfs_inode_cachep ;
 int nilfs_segbuf_cachep ;
 int nilfs_transaction_cachep ;
 int rcu_barrier () ;

__attribute__((used)) static void nilfs_destroy_cachep(void)
{




 rcu_barrier();

 kmem_cache_destroy(nilfs_inode_cachep);
 kmem_cache_destroy(nilfs_transaction_cachep);
 kmem_cache_destroy(nilfs_segbuf_cachep);
 kmem_cache_destroy(nilfs_btree_path_cache);
}
