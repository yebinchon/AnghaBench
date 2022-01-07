
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_move_extents_context {struct inode* inode; } ;
struct ocfs2_dinode {int i_ctime_nsec; int i_ctime; } ;
struct TYPE_3__ {int tv_nsec; int tv_sec; } ;
struct inode {TYPE_1__ i_ctime; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_4__ {int ip_alloc_sem; } ;


 int EROFS ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int __ocfs2_move_extents_range (struct buffer_head*,struct ocfs2_move_extents_context*) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 TYPE_1__ current_time (struct inode*) ;
 int down_write (int *) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_is_soft_readonly (struct ocfs2_super*) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_rw_lock (struct inode*,int) ;
 int ocfs2_rw_unlock (struct inode*,int) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_update_inode_fsync_trans (int *,struct inode*,int ) ;
 int up_write (int *) ;

__attribute__((used)) static int ocfs2_move_extents(struct ocfs2_move_extents_context *context)
{
 int status;
 handle_t *handle;
 struct inode *inode = context->inode;
 struct ocfs2_dinode *di;
 struct buffer_head *di_bh = ((void*)0);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 if (ocfs2_is_hard_readonly(osb) || ocfs2_is_soft_readonly(osb))
  return -EROFS;

 inode_lock(inode);




 status = ocfs2_rw_lock(inode, 1);
 if (status) {
  mlog_errno(status);
  goto out;
 }

 status = ocfs2_inode_lock(inode, &di_bh, 1);
 if (status) {
  mlog_errno(status);
  goto out_rw_unlock;
 }




 down_write(&OCFS2_I(inode)->ip_alloc_sem);

 status = __ocfs2_move_extents_range(di_bh, context);

 up_write(&OCFS2_I(inode)->ip_alloc_sem);
 if (status) {
  mlog_errno(status);
  goto out_inode_unlock;
 }




 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  mlog_errno(status);
  goto out_inode_unlock;
 }

 status = ocfs2_journal_access_di(handle, INODE_CACHE(inode), di_bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status) {
  mlog_errno(status);
  goto out_commit;
 }

 di = (struct ocfs2_dinode *)di_bh->b_data;
 inode->i_ctime = current_time(inode);
 di->i_ctime = cpu_to_le64(inode->i_ctime.tv_sec);
 di->i_ctime_nsec = cpu_to_le32(inode->i_ctime.tv_nsec);
 ocfs2_update_inode_fsync_trans(handle, inode, 0);

 ocfs2_journal_dirty(handle, di_bh);

out_commit:
 ocfs2_commit_trans(osb, handle);

out_inode_unlock:
 brelse(di_bh);
 ocfs2_inode_unlock(inode, 1);
out_rw_unlock:
 ocfs2_rw_unlock(inode, 1);
out:
 inode_unlock(inode);

 return status;
}
