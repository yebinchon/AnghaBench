
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct rpc_inode {struct inode vfs_inode; } ;


 int GFP_KERNEL ;
 struct rpc_inode* kmem_cache_alloc (int ,int ) ;
 int rpc_inode_cachep ;

__attribute__((used)) static struct inode *
rpc_alloc_inode(struct super_block *sb)
{
 struct rpc_inode *rpci;
 rpci = kmem_cache_alloc(rpc_inode_cachep, GFP_KERNEL);
 if (!rpci)
  return ((void*)0);
 return &rpci->vfs_inode;
}
