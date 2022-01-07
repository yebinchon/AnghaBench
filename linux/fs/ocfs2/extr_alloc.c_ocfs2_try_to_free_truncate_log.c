
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tid_t ;
struct ocfs2_super {unsigned int truncated_clusters; TYPE_1__* journal; int osb_tl_inode; } ;
struct TYPE_2__ {int j_journal; } ;


 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 scalar_t__ jbd2_journal_start_commit (int ,int *) ;
 int jbd2_log_wait_commit (int ,int ) ;
 int mlog_errno (int) ;
 int ocfs2_flush_truncate_log (struct ocfs2_super*) ;

int ocfs2_try_to_free_truncate_log(struct ocfs2_super *osb,
     unsigned int needed)
{
 tid_t target;
 int ret = 0;
 unsigned int truncated_clusters;

 inode_lock(osb->osb_tl_inode);
 truncated_clusters = osb->truncated_clusters;
 inode_unlock(osb->osb_tl_inode);





 if (truncated_clusters < needed)
  goto out;

 ret = ocfs2_flush_truncate_log(osb);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 if (jbd2_journal_start_commit(osb->journal->j_journal, &target)) {
  jbd2_log_wait_commit(osb->journal->j_journal, target);
  ret = 1;
 }
out:
 return ret;
}
