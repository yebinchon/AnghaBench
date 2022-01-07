
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ovl_inode {struct inode vfs_inode; int lock; int * lowerdata; int * lower; int * __upperdentry; scalar_t__ flags; scalar_t__ version; int * redirect; int * cache; } ;


 int GFP_KERNEL ;
 struct ovl_inode* kmem_cache_alloc (int ,int ) ;
 int mutex_init (int *) ;
 int ovl_inode_cachep ;

__attribute__((used)) static struct inode *ovl_alloc_inode(struct super_block *sb)
{
 struct ovl_inode *oi = kmem_cache_alloc(ovl_inode_cachep, GFP_KERNEL);

 if (!oi)
  return ((void*)0);

 oi->cache = ((void*)0);
 oi->redirect = ((void*)0);
 oi->version = 0;
 oi->flags = 0;
 oi->__upperdentry = ((void*)0);
 oi->lower = ((void*)0);
 oi->lowerdata = ((void*)0);
 mutex_init(&oi->lock);

 return &oi->vfs_inode;
}
