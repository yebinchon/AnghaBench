
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_inode_info {scalar_t__ ip_blkno; } ;
struct inode {scalar_t__ i_ino; } ;
struct buffer_head {scalar_t__ i_ino; } ;


 int ENOENT ;
 int ENOLCK ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OI_LS_REFLINK_TARGET ;
 int brelse (struct inode*) ;
 int lock_two_nondirectories (struct inode*,struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_inode_lock_nested (struct inode*,struct inode**,int,int ) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_rw_lock (struct inode*,int) ;
 int ocfs2_rw_unlock (struct inode*,int) ;
 int swap (struct inode*,struct inode*) ;
 int trace_ocfs2_double_lock (unsigned long long,unsigned long long) ;
 int trace_ocfs2_double_lock_end (unsigned long long,unsigned long long) ;
 int unlock_two_nondirectories (struct inode*,struct inode*) ;

int ocfs2_reflink_inodes_lock(struct inode *s_inode,
         struct buffer_head **bh_s,
         struct inode *t_inode,
         struct buffer_head **bh_t)
{
 struct inode *inode1 = s_inode;
 struct inode *inode2 = t_inode;
 struct ocfs2_inode_info *oi1;
 struct ocfs2_inode_info *oi2;
 struct buffer_head *bh1 = ((void*)0);
 struct buffer_head *bh2 = ((void*)0);
 bool same_inode = (s_inode == t_inode);
 bool need_swap = (inode1->i_ino > inode2->i_ino);
 int status;


 lock_two_nondirectories(s_inode, t_inode);
 if (need_swap)
  swap(inode1, inode2);

 status = ocfs2_rw_lock(inode1, 1);
 if (status) {
  mlog_errno(status);
  goto out_i1;
 }
 if (!same_inode) {
  status = ocfs2_rw_lock(inode2, 1);
  if (status) {
   mlog_errno(status);
   goto out_i2;
  }
 }


 oi1 = OCFS2_I(inode1);
 oi2 = OCFS2_I(inode2);

 trace_ocfs2_double_lock((unsigned long long)oi1->ip_blkno,
    (unsigned long long)oi2->ip_blkno);


 if (oi1->ip_blkno > oi2->ip_blkno)
  mlog_errno(-ENOLCK);


 status = ocfs2_inode_lock_nested(inode1, &bh1, 1,
      OI_LS_REFLINK_TARGET);
 if (status < 0) {
  if (status != -ENOENT)
   mlog_errno(status);
  goto out_rw2;
 }


 if (!same_inode) {
  status = ocfs2_inode_lock_nested(inode2, &bh2, 1,
       OI_LS_REFLINK_TARGET);
  if (status < 0) {
   if (status != -ENOENT)
    mlog_errno(status);
   goto out_cl1;
  }
 } else {
  bh2 = bh1;
 }





 if (need_swap)
  swap(bh1, bh2);
 *bh_s = bh1;
 *bh_t = bh2;

 trace_ocfs2_double_lock_end(
   (unsigned long long)oi1->ip_blkno,
   (unsigned long long)oi2->ip_blkno);

 return 0;

out_cl1:
 ocfs2_inode_unlock(inode1, 1);
 brelse(bh1);
out_rw2:
 ocfs2_rw_unlock(inode2, 1);
out_i2:
 ocfs2_rw_unlock(inode1, 1);
out_i1:
 unlock_two_nondirectories(s_inode, t_inode);
 return status;
}
