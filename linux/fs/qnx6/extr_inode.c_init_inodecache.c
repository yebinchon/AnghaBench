
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qnx6_inode_info {int dummy; } ;


 int ENOMEM ;
 int SLAB_ACCOUNT ;
 int SLAB_MEM_SPREAD ;
 int SLAB_RECLAIM_ACCOUNT ;
 int init_once ;
 int kmem_cache_create (char*,int,int ,int,int ) ;
 int qnx6_inode_cachep ;

__attribute__((used)) static int init_inodecache(void)
{
 qnx6_inode_cachep = kmem_cache_create("qnx6_inode_cache",
          sizeof(struct qnx6_inode_info),
          0, (SLAB_RECLAIM_ACCOUNT|
      SLAB_MEM_SPREAD|SLAB_ACCOUNT),
          init_once);
 if (!qnx6_inode_cachep)
  return -ENOMEM;
 return 0;
}
