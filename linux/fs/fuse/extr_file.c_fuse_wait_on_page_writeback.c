
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_inode {int page_waitq; } ;
typedef int pgoff_t ;


 int fuse_page_is_writeback (struct inode*,int ) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void fuse_wait_on_page_writeback(struct inode *inode, pgoff_t index)
{
 struct fuse_inode *fi = get_fuse_inode(inode);

 wait_event(fi->page_waitq, !fuse_page_is_writeback(inode, index));
}
