
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_inode_handle {scalar_t__ ih_blkno; scalar_t__ ih_generation; } ;
struct inode {scalar_t__ i_generation; } ;
struct dentry {scalar_t__ i_generation; } ;


 int EINVAL ;
 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct inode*) ;
 int ML_ERROR ;
 struct ocfs2_super* OCFS2_SB (struct super_block*) ;
 int PTR_ERR (struct inode*) ;
 struct inode* d_obtain_alias (struct inode*) ;
 int iput (struct inode*) ;
 int mlog (int ,char*,int) ;
 int mlog_errno (int ) ;
 struct inode* ocfs2_iget (struct ocfs2_super*,scalar_t__,int ,int ) ;
 struct inode* ocfs2_ilookup (struct super_block*,scalar_t__) ;
 int ocfs2_nfs_sync_lock (struct ocfs2_super*,int) ;
 int ocfs2_nfs_sync_unlock (struct ocfs2_super*,int) ;
 int ocfs2_test_inode_bit (struct ocfs2_super*,scalar_t__,int*) ;
 int trace_ocfs2_get_dentry_begin (struct super_block*,struct ocfs2_inode_handle*,unsigned long long) ;
 int trace_ocfs2_get_dentry_end (struct inode*) ;
 int trace_ocfs2_get_dentry_generation (unsigned long long,scalar_t__,scalar_t__) ;
 int trace_ocfs2_get_dentry_stale (unsigned long long,scalar_t__) ;
 int trace_ocfs2_get_dentry_test_bit (int,int) ;

__attribute__((used)) static struct dentry *ocfs2_get_dentry(struct super_block *sb,
  struct ocfs2_inode_handle *handle)
{
 struct inode *inode;
 struct ocfs2_super *osb = OCFS2_SB(sb);
 u64 blkno = handle->ih_blkno;
 int status, set;
 struct dentry *result;

 trace_ocfs2_get_dentry_begin(sb, handle, (unsigned long long)blkno);

 if (blkno == 0) {
  result = ERR_PTR(-ESTALE);
  goto bail;
 }

 inode = ocfs2_ilookup(sb, blkno);




 if (inode)
  goto check_gen;





 status = ocfs2_nfs_sync_lock(osb, 1);
 if (status < 0) {
  mlog(ML_ERROR, "getting nfs sync lock(EX) failed %d\n", status);
  goto check_err;
 }

 status = ocfs2_test_inode_bit(osb, blkno, &set);
 if (status < 0) {
  if (status == -EINVAL) {





   status = -ESTALE;
  } else
   mlog(ML_ERROR, "test inode bit failed %d\n", status);
  goto unlock_nfs_sync;
 }

 trace_ocfs2_get_dentry_test_bit(status, set);

 if (!set) {
  status = -ESTALE;
  goto unlock_nfs_sync;
 }

 inode = ocfs2_iget(osb, blkno, 0, 0);

unlock_nfs_sync:
 ocfs2_nfs_sync_unlock(osb, 1);

check_err:
 if (status < 0) {
  if (status == -ESTALE) {
   trace_ocfs2_get_dentry_stale((unsigned long long)blkno,
           handle->ih_generation);
  }
  result = ERR_PTR(status);
  goto bail;
 }

 if (IS_ERR(inode)) {
  mlog_errno(PTR_ERR(inode));
  result = ERR_CAST(inode);
  goto bail;
 }

check_gen:
 if (handle->ih_generation != inode->i_generation) {
  trace_ocfs2_get_dentry_generation((unsigned long long)blkno,
        handle->ih_generation,
        inode->i_generation);
  iput(inode);
  result = ERR_PTR(-ESTALE);
  goto bail;
 }

 result = d_obtain_alias(inode);
 if (IS_ERR(result))
  mlog_errno(PTR_ERR(result));

bail:
 trace_ocfs2_get_dentry_end(result);
 return result;
}
