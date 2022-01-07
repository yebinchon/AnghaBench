
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int HFS_I (struct inode*) ;
 int hfs_inode_cachep ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void hfs_free_inode(struct inode *inode)
{
 kmem_cache_free(hfs_inode_cachep, HFS_I(inode));
}
