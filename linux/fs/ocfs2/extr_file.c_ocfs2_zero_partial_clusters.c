
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct ocfs2_super {unsigned int s_clustersize; } ;
struct inode {int i_sb; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 scalar_t__ IS_ERR (int *) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_update_inode_fsync_trans (int *,struct inode*,int) ;
 int ocfs2_zero_range_for_truncate (struct inode*,int *,unsigned int,unsigned int) ;
 int trace_ocfs2_zero_partial_clusters (unsigned long long,unsigned long long,unsigned long long) ;
 int trace_ocfs2_zero_partial_clusters_range1 (unsigned long long,unsigned long long) ;
 int trace_ocfs2_zero_partial_clusters_range2 (unsigned long long,unsigned long long) ;

__attribute__((used)) static int ocfs2_zero_partial_clusters(struct inode *inode,
           u64 start, u64 len)
{
 int ret = 0;
 u64 tmpend = 0;
 u64 end = start + len;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 unsigned int csize = osb->s_clustersize;
 handle_t *handle;
 trace_ocfs2_zero_partial_clusters(
  (unsigned long long)OCFS2_I(inode)->ip_blkno,
  (unsigned long long)start, (unsigned long long)end);






 if ((start & (csize - 1)) == 0 && (end & (csize - 1)) == 0)
  goto out;

 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }
 if ((start & (csize - 1)) != 0) {




  tmpend = (u64)osb->s_clustersize +
   (start & ~(osb->s_clustersize - 1));
  if (tmpend > end)
   tmpend = end;

  trace_ocfs2_zero_partial_clusters_range1(
   (unsigned long long)start,
   (unsigned long long)tmpend);

  ret = ocfs2_zero_range_for_truncate(inode, handle, start,
          tmpend);
  if (ret)
   mlog_errno(ret);
 }

 if (tmpend < end) {





  start = end & ~(osb->s_clustersize - 1);

  trace_ocfs2_zero_partial_clusters_range2(
   (unsigned long long)start, (unsigned long long)end);

  ret = ocfs2_zero_range_for_truncate(inode, handle, start, end);
  if (ret)
   mlog_errno(ret);
 }
 ocfs2_update_inode_fsync_trans(handle, inode, 1);

 ocfs2_commit_trans(osb, handle);
out:
 return ret;
}
