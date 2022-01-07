
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int JFS_IP (struct inode*) ;
 int jfs_inode_cachep ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void jfs_free_inode(struct inode *inode)
{
 kmem_cache_free(jfs_inode_cachep, JFS_IP(inode));
}
