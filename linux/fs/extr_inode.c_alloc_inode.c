
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_operations {scalar_t__ free_inode; int (* destroy_inode ) (struct inode*) ;struct inode* (* alloc_inode ) (struct super_block*) ;} ;
struct super_block {struct super_operations* s_op; } ;
struct inode {int i_rcu; scalar_t__ free_inode; } ;


 int GFP_KERNEL ;
 int i_callback (int *) ;
 int inode_cachep ;
 int inode_init_always (struct super_block*,struct inode*) ;
 struct inode* kmem_cache_alloc (int ,int ) ;
 struct inode* stub1 (struct super_block*) ;
 int stub2 (struct inode*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct inode *alloc_inode(struct super_block *sb)
{
 const struct super_operations *ops = sb->s_op;
 struct inode *inode;

 if (ops->alloc_inode)
  inode = ops->alloc_inode(sb);
 else
  inode = kmem_cache_alloc(inode_cachep, GFP_KERNEL);

 if (!inode)
  return ((void*)0);

 if (unlikely(inode_init_always(sb, inode))) {
  if (ops->destroy_inode) {
   ops->destroy_inode(inode);
   if (!ops->free_inode)
    return ((void*)0);
  }
  inode->free_inode = ops->free_inode;
  i_callback(&inode->i_rcu);
  return ((void*)0);
 }

 return inode;
}
