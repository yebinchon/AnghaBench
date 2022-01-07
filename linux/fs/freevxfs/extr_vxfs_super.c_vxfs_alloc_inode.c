
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct vxfs_inode_info {struct inode vfs_inode; } ;
struct super_block {int dummy; } ;


 int GFP_KERNEL ;
 int inode_init_once (struct inode*) ;
 struct vxfs_inode_info* kmem_cache_alloc (int ,int ) ;
 int vxfs_inode_cachep ;

__attribute__((used)) static struct inode *vxfs_alloc_inode(struct super_block *sb)
{
 struct vxfs_inode_info *vi;

 vi = kmem_cache_alloc(vxfs_inode_cachep, GFP_KERNEL);
 if (!vi)
  return ((void*)0);
 inode_init_once(&vi->vfs_inode);
 return &vi->vfs_inode;
}
