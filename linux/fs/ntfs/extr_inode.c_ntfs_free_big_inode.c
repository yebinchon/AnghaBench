
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int NTFS_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int ntfs_big_inode_cache ;

void ntfs_free_big_inode(struct inode *inode)
{
 kmem_cache_free(ntfs_big_inode_cache, NTFS_I(inode));
}
