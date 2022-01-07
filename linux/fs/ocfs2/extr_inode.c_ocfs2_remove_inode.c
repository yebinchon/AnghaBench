
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int i_flags; int i_dtime; int i_suballoc_slot; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {int ip_flags; } ;


 int ENOENT ;
 int INODE_ALLOC_SYSTEM_INODE ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ OCFS2_DELETE_INODE_CREDITS ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_SKIP_ORPHAN_DIR ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_ORPHANED_FL ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int OCFS2_VALID_FL ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int dquot_free_inode (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 int ktime_get_real_seconds () ;
 int le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_free_dinode (int *,struct inode*,struct buffer_head*,struct ocfs2_dinode*) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_orphan_del (struct ocfs2_super*,int *,struct inode*,struct inode*,struct buffer_head*,int) ;
 scalar_t__ ocfs2_quota_trans_credits (int ) ;
 int ocfs2_remove_from_cache (int ,struct buffer_head*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,scalar_t__) ;

__attribute__((used)) static int ocfs2_remove_inode(struct inode *inode,
         struct buffer_head *di_bh,
         struct inode *orphan_dir_inode,
         struct buffer_head *orphan_dir_bh)
{
 int status;
 struct inode *inode_alloc_inode = ((void*)0);
 struct buffer_head *inode_alloc_bh = ((void*)0);
 handle_t *handle;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *) di_bh->b_data;

 inode_alloc_inode =
  ocfs2_get_system_file_inode(osb, INODE_ALLOC_SYSTEM_INODE,
         le16_to_cpu(di->i_suballoc_slot));
 if (!inode_alloc_inode) {
  status = -ENOENT;
  mlog_errno(status);
  goto bail;
 }

 inode_lock(inode_alloc_inode);
 status = ocfs2_inode_lock(inode_alloc_inode, &inode_alloc_bh, 1);
 if (status < 0) {
  inode_unlock(inode_alloc_inode);

  mlog_errno(status);
  goto bail;
 }

 handle = ocfs2_start_trans(osb, OCFS2_DELETE_INODE_CREDITS +
       ocfs2_quota_trans_credits(inode->i_sb));
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  mlog_errno(status);
  goto bail_unlock;
 }

 if (!(OCFS2_I(inode)->ip_flags & OCFS2_INODE_SKIP_ORPHAN_DIR)) {
  status = ocfs2_orphan_del(osb, handle, orphan_dir_inode, inode,
       orphan_dir_bh, 0);
  if (status < 0) {
   mlog_errno(status);
   goto bail_commit;
  }
 }


 status = ocfs2_journal_access_di(handle, INODE_CACHE(inode), di_bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto bail_commit;
 }

 di->i_dtime = cpu_to_le64(ktime_get_real_seconds());
 di->i_flags &= cpu_to_le32(~(OCFS2_VALID_FL | OCFS2_ORPHANED_FL));
 ocfs2_journal_dirty(handle, di_bh);

 ocfs2_remove_from_cache(INODE_CACHE(inode), di_bh);
 dquot_free_inode(inode);

 status = ocfs2_free_dinode(handle, inode_alloc_inode,
       inode_alloc_bh, di);
 if (status < 0)
  mlog_errno(status);

bail_commit:
 ocfs2_commit_trans(osb, handle);
bail_unlock:
 ocfs2_inode_unlock(inode_alloc_inode, 1);
 inode_unlock(inode_alloc_inode);
 brelse(inode_alloc_bh);
bail:
 iput(inode_alloc_inode);

 return status;
}
