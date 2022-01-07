
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct jffs2_inode_info {struct inode vfs_inode; } ;


 int GFP_KERNEL ;
 int jffs2_inode_cachep ;
 struct jffs2_inode_info* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *jffs2_alloc_inode(struct super_block *sb)
{
 struct jffs2_inode_info *f;

 f = kmem_cache_alloc(jffs2_inode_cachep, GFP_KERNEL);
 if (!f)
  return ((void*)0);
 return &f->vfs_inode;
}
