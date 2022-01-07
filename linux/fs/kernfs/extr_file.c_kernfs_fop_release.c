
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_open_file {struct kernfs_open_file* prealloc_buf; } ;
struct kernfs_node {int flags; } ;
struct inode {struct kernfs_node* i_private; } ;
struct file {int dummy; } ;


 int KERNFS_HAS_RELEASE ;
 struct kernfs_open_file* kernfs_of (struct file*) ;
 int kernfs_open_file_mutex ;
 int kernfs_put_open_node (struct kernfs_node*,struct kernfs_open_file*) ;
 int kernfs_release_file (struct kernfs_node*,struct kernfs_open_file*) ;
 int kfree (struct kernfs_open_file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int kernfs_fop_release(struct inode *inode, struct file *filp)
{
 struct kernfs_node *kn = inode->i_private;
 struct kernfs_open_file *of = kernfs_of(filp);

 if (kn->flags & KERNFS_HAS_RELEASE) {
  mutex_lock(&kernfs_open_file_mutex);
  kernfs_release_file(kn, of);
  mutex_unlock(&kernfs_open_file_mutex);
 }

 kernfs_put_open_node(kn, of);
 seq_release(inode, filp);
 kfree(of->prealloc_buf);
 kfree(of);

 return 0;
}
