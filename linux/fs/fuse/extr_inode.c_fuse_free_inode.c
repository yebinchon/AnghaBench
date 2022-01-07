
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_inode {int forget; int mutex; } ;


 int fuse_inode_cachep ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct fuse_inode*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void fuse_free_inode(struct inode *inode)
{
 struct fuse_inode *fi = get_fuse_inode(inode);

 mutex_destroy(&fi->mutex);
 kfree(fi->forget);
 kmem_cache_free(fuse_inode_cachep, fi);
}
