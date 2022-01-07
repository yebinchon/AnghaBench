
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct ocfs2_dinode {int i_ctime_nsec; int i_ctime; int i_mode; } ;
struct TYPE_2__ {int tv_nsec; int tv_sec; } ;
struct inode {int i_sb; TYPE_1__ i_ctime; int i_mode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 TYPE_1__ current_time (struct inode*) ;
 int get_bh (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (int ,int *) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;
 int * ocfs2_start_trans (int ,int ) ;
 int ocfs2_update_inode_fsync_trans (int *,struct inode*,int ) ;

__attribute__((used)) static int ocfs2_acl_set_mode(struct inode *inode, struct buffer_head *di_bh,
         handle_t *handle, umode_t new_mode)
{
 int ret, commit_handle = 0;
 struct ocfs2_dinode *di;

 if (di_bh == ((void*)0)) {
  ret = ocfs2_read_inode_block(inode, &di_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 } else
  get_bh(di_bh);

 if (handle == ((void*)0)) {
  handle = ocfs2_start_trans(OCFS2_SB(inode->i_sb),
        OCFS2_INODE_UPDATE_CREDITS);
  if (IS_ERR(handle)) {
   ret = PTR_ERR(handle);
   mlog_errno(ret);
   goto out_brelse;
  }

  commit_handle = 1;
 }

 di = (struct ocfs2_dinode *)di_bh->b_data;
 ret = ocfs2_journal_access_di(handle, INODE_CACHE(inode), di_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 inode->i_mode = new_mode;
 inode->i_ctime = current_time(inode);
 di->i_mode = cpu_to_le16(inode->i_mode);
 di->i_ctime = cpu_to_le64(inode->i_ctime.tv_sec);
 di->i_ctime_nsec = cpu_to_le32(inode->i_ctime.tv_nsec);
 ocfs2_update_inode_fsync_trans(handle, inode, 0);

 ocfs2_journal_dirty(handle, di_bh);

out_commit:
 if (commit_handle)
  ocfs2_commit_trans(OCFS2_SB(inode->i_sb), handle);
out_brelse:
 brelse(di_bh);
out:
 return ret;
}
