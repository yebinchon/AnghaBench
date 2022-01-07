
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int EAGAIN ;
 int brelse (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 scalar_t__ ocfs2_should_update_atime (struct inode*,struct vfsmount*) ;
 int ocfs2_try_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_update_inode_atime (struct inode*,struct buffer_head*) ;

int ocfs2_inode_lock_atime(struct inode *inode,
     struct vfsmount *vfsmnt,
     int *level, int wait)
{
 int ret;

 if (wait)
  ret = ocfs2_inode_lock(inode, ((void*)0), 0);
 else
  ret = ocfs2_try_inode_lock(inode, ((void*)0), 0);

 if (ret < 0) {
  if (ret != -EAGAIN)
   mlog_errno(ret);
  return ret;
 }





 if (ocfs2_should_update_atime(inode, vfsmnt)) {
  struct buffer_head *bh = ((void*)0);

  ocfs2_inode_unlock(inode, 0);
  if (wait)
   ret = ocfs2_inode_lock(inode, &bh, 1);
  else
   ret = ocfs2_try_inode_lock(inode, &bh, 1);

  if (ret < 0) {
   if (ret != -EAGAIN)
    mlog_errno(ret);
   return ret;
  }
  *level = 1;
  if (ocfs2_should_update_atime(inode, vfsmnt))
   ocfs2_update_inode_atime(inode, bh);
  brelse(bh);
 } else
  *level = 0;

 return ret;
}
