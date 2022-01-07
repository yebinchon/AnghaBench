
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_inode {struct inode inode; int forget; int lock; int mutex; scalar_t__ state; scalar_t__ orig_ino; scalar_t__ attr_version; scalar_t__ nlookup; scalar_t__ nodeid; scalar_t__ inval_mask; scalar_t__ i_time; } ;


 int GFP_KERNEL ;
 int fuse_alloc_forget () ;
 int fuse_inode_cachep ;
 struct fuse_inode* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct fuse_inode*) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct inode *fuse_alloc_inode(struct super_block *sb)
{
 struct fuse_inode *fi;

 fi = kmem_cache_alloc(fuse_inode_cachep, GFP_KERNEL);
 if (!fi)
  return ((void*)0);

 fi->i_time = 0;
 fi->inval_mask = 0;
 fi->nodeid = 0;
 fi->nlookup = 0;
 fi->attr_version = 0;
 fi->orig_ino = 0;
 fi->state = 0;
 mutex_init(&fi->mutex);
 spin_lock_init(&fi->lock);
 fi->forget = fuse_alloc_forget();
 if (!fi->forget) {
  kmem_cache_free(fuse_inode_cachep, fi);
  return ((void*)0);
 }

 return &fi->inode;
}
