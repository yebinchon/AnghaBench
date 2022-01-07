
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int VXFS_INO (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int vxfs_inode_cachep ;

__attribute__((used)) static void vxfs_free_inode(struct inode *inode)
{
 kmem_cache_free(vxfs_inode_cachep, VXFS_INO(inode));
}
