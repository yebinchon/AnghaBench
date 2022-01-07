
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int NFS_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int nfs_inode_cachep ;

void nfs_free_inode(struct inode *inode)
{
 kmem_cache_free(nfs_inode_cachep, NFS_I(inode));
}
