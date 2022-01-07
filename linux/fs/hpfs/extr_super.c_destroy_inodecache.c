
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hpfs_inode_cachep ;
 int kmem_cache_destroy (int ) ;
 int rcu_barrier () ;

__attribute__((used)) static void destroy_inodecache(void)
{




 rcu_barrier();
 kmem_cache_destroy(hpfs_inode_cachep);
}
