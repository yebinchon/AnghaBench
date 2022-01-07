
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_alloc {int dummy; } ;


 int BUG_ON (int ) ;
 int SLAB_ACCOUNT ;
 int SLAB_HWCACHE_ALIGN ;
 int SLAB_MEM_SPREAD ;
 int SLAB_RECLAIM_ACCOUNT ;
 int init_once ;
 int * kmem_cache_create (char*,int,int ,int,int ) ;
 int * sock_inode_cachep ;

__attribute__((used)) static void init_inodecache(void)
{
 sock_inode_cachep = kmem_cache_create("sock_inode_cache",
           sizeof(struct socket_alloc),
           0,
           (SLAB_HWCACHE_ALIGN |
            SLAB_RECLAIM_ACCOUNT |
            SLAB_MEM_SPREAD | SLAB_ACCOUNT),
           init_once);
 BUG_ON(sock_inode_cachep == ((void*)0));
}
