
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_dinode {int i_flags; } ;
struct inode {int i_sb; int i_ino; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int sigset_t ;
struct TYPE_2__ {int ip_flags; scalar_t__ ip_blkno; } ;


 int EDEADLK ;
 int ENOENT ;
 int ML_ERROR ;
 int OCFS2_DIO_ORPHANED_FL ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_DELETED ;
 int OCFS2_SB (int ) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (int ) ;
 int dquot_initialize (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int mlog (int ,char*,int) ;
 int mlog_errno (int) ;
 int ocfs2_block_signals (int *) ;
 int ocfs2_cleanup_delete_inode (struct inode*,int) ;
 int ocfs2_inode_is_valid_to_delete (struct inode*) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_nfs_sync_lock (int ,int ) ;
 int ocfs2_nfs_sync_unlock (int ,int ) ;
 int ocfs2_query_inode_wipe (struct inode*,struct buffer_head*,int*) ;
 int ocfs2_unblock_signals (int *) ;
 int ocfs2_wipe_inode (struct inode*,struct buffer_head*) ;
 int trace_ocfs2_delete_inode (int ,unsigned long long,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ocfs2_delete_inode(struct inode *inode)
{
 int wipe, status;
 sigset_t oldset;
 struct buffer_head *di_bh = ((void*)0);
 struct ocfs2_dinode *di = ((void*)0);

 trace_ocfs2_delete_inode(inode->i_ino,
     (unsigned long long)OCFS2_I(inode)->ip_blkno,
     is_bad_inode(inode));




 if (is_bad_inode(inode) || !OCFS2_I(inode)->ip_blkno)
  goto bail;

 if (!ocfs2_inode_is_valid_to_delete(inode)) {



  ocfs2_cleanup_delete_inode(inode, 0);
  goto bail;
 }

 dquot_initialize(inode);





 ocfs2_block_signals(&oldset);






 status = ocfs2_nfs_sync_lock(OCFS2_SB(inode->i_sb), 0);
 if (status < 0) {
  mlog(ML_ERROR, "getting nfs sync lock(PR) failed %d\n", status);
  ocfs2_cleanup_delete_inode(inode, 0);
  goto bail_unblock;
 }
 status = ocfs2_inode_lock(inode, &di_bh, 1);
 if (status < 0) {
  if (status != -ENOENT)
   mlog_errno(status);
  ocfs2_cleanup_delete_inode(inode, 0);
  goto bail_unlock_nfs_sync;
 }

 di = (struct ocfs2_dinode *)di_bh->b_data;


 if (unlikely(di->i_flags & cpu_to_le32(OCFS2_DIO_ORPHANED_FL))) {
  ocfs2_cleanup_delete_inode(inode, 0);
  goto bail_unlock_inode;
 }



 status = ocfs2_query_inode_wipe(inode, di_bh, &wipe);
 if (!wipe || status < 0) {



  if (status < 0)
   mlog_errno(status);




  ocfs2_cleanup_delete_inode(inode, 1);
  goto bail_unlock_inode;
 }

 ocfs2_cleanup_delete_inode(inode, 0);

 status = ocfs2_wipe_inode(inode, di_bh);
 if (status < 0) {
  if (status != -EDEADLK)
   mlog_errno(status);
  goto bail_unlock_inode;
 }
 OCFS2_I(inode)->ip_flags |= OCFS2_INODE_DELETED;

bail_unlock_inode:
 ocfs2_inode_unlock(inode, 1);
 brelse(di_bh);

bail_unlock_nfs_sync:
 ocfs2_nfs_sync_unlock(OCFS2_SB(inode->i_sb), 0);

bail_unblock:
 ocfs2_unblock_signals(&oldset);
bail:
 return;
}
