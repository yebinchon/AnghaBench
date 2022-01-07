
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_inode_info {int ip_flags; scalar_t__ ip_blkno; } ;
struct ocfs2_dinode {int i_flags; int i_dyn_features; int i_orphaned_slot; scalar_t__ i_dtime; int i_blkno; } ;
struct inode {int i_nlink; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EAGAIN ;
 int EEXIST ;
 int ML_ERROR ;
 int OCFS2_HAS_REFCOUNT_FL ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_SKIP_ORPHAN_DIR ;
 int OCFS2_ORPHANED_FL ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long,unsigned long long,int ,int) ;
 int mlog_errno (int) ;
 int ocfs2_inode_is_valid_to_delete (struct inode*) ;
 int ocfs2_try_open_lock (struct inode*,int) ;
 int trace_ocfs2_query_inode_wipe_begin (unsigned long long,int ) ;
 int trace_ocfs2_query_inode_wipe_end (int,int) ;
 int trace_ocfs2_query_inode_wipe_succ (int ) ;

__attribute__((used)) static int ocfs2_query_inode_wipe(struct inode *inode,
      struct buffer_head *di_bh,
      int *wipe)
{
 int status = 0, reason = 0;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_dinode *di;

 *wipe = 0;

 trace_ocfs2_query_inode_wipe_begin((unsigned long long)oi->ip_blkno,
        inode->i_nlink);




 if (!ocfs2_inode_is_valid_to_delete(inode)) {
  reason = 1;
  goto bail;
 }



 if (inode->i_nlink)
  goto bail;


 di = (struct ocfs2_dinode *) di_bh->b_data;
 if (!(di->i_flags & cpu_to_le32(OCFS2_ORPHANED_FL)) &&
     !(oi->ip_flags & OCFS2_INODE_SKIP_ORPHAN_DIR)) {
  if (di->i_dyn_features & cpu_to_le16(OCFS2_HAS_REFCOUNT_FL)) {
   reason = 2;
   goto bail;
  }


  status = -EEXIST;
  mlog(ML_ERROR,
       "Inode %llu (on-disk %llu) not orphaned! "
       "Disk flags  0x%x, inode flags 0x%x\n",
       (unsigned long long)oi->ip_blkno,
       (unsigned long long)le64_to_cpu(di->i_blkno),
       le32_to_cpu(di->i_flags), oi->ip_flags);
  goto bail;
 }


 if (di->i_dtime) {
  status = -EEXIST;
  mlog_errno(status);
  goto bail;
 }
 status = ocfs2_try_open_lock(inode, 1);
 if (status == -EAGAIN) {
  status = 0;
  reason = 3;
  goto bail;
 }
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 *wipe = 1;
 trace_ocfs2_query_inode_wipe_succ(le16_to_cpu(di->i_orphaned_slot));

bail:
 trace_ocfs2_query_inode_wipe_end(status, reason);
 return status;
}
