
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_inode {scalar_t__ writectr; int page_waitq; int lock; } ;


 int BUG_ON (int) ;
 scalar_t__ FUSE_NOWRITE ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int inode_is_locked (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int) ;

void fuse_set_nowrite(struct inode *inode)
{
 struct fuse_inode *fi = get_fuse_inode(inode);

 BUG_ON(!inode_is_locked(inode));

 spin_lock(&fi->lock);
 BUG_ON(fi->writectr < 0);
 fi->writectr += FUSE_NOWRITE;
 spin_unlock(&fi->lock);
 wait_event(fi->page_waitq, fi->writectr == FUSE_NOWRITE);
}
