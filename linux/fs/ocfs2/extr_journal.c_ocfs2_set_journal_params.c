
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_super {long osb_commit_interval; int s_mount_opt; TYPE_1__* journal; } ;
struct TYPE_4__ {unsigned long j_commit_interval; int j_state_lock; int j_flags; } ;
typedef TYPE_2__ journal_t ;
struct TYPE_3__ {TYPE_2__* j_journal; } ;


 int JBD2_BARRIER ;
 unsigned long OCFS2_DEFAULT_COMMIT_INTERVAL ;
 int OCFS2_MOUNT_BARRIER ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void ocfs2_set_journal_params(struct ocfs2_super *osb)
{
 journal_t *journal = osb->journal->j_journal;
 unsigned long commit_interval = OCFS2_DEFAULT_COMMIT_INTERVAL;

 if (osb->osb_commit_interval)
  commit_interval = osb->osb_commit_interval;

 write_lock(&journal->j_state_lock);
 journal->j_commit_interval = commit_interval;
 if (osb->s_mount_opt & OCFS2_MOUNT_BARRIER)
  journal->j_flags |= JBD2_BARRIER;
 else
  journal->j_flags &= ~JBD2_BARRIER;
 write_unlock(&journal->j_state_lock);
}
