
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; } ;


 int IS_NOCMTIME (struct inode*) ;
 int current_time (struct inode*) ;
 int mark_inode_dirty_sync (struct inode*) ;

void fuse_update_ctime(struct inode *inode)
{
 if (!IS_NOCMTIME(inode)) {
  inode->i_ctime = current_time(inode);
  mark_inode_dirty_sync(inode);
 }
}
