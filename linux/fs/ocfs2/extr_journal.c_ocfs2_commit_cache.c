
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct ocfs2_journal* journal; } ;
struct ocfs2_journal {int j_checkpointed; int j_trans_id; int j_trans_barrier; int j_num_trans; int j_journal; } ;


 unsigned int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int down_write (int *) ;
 int jbd2_journal_flush (int ) ;
 int jbd2_journal_lock_updates (int ) ;
 int jbd2_journal_unlock_updates (int ) ;
 int mlog_errno (int) ;
 int ocfs2_inc_trans_id (struct ocfs2_journal*) ;
 int ocfs2_wake_downconvert_thread (struct ocfs2_super*) ;
 int trace_ocfs2_commit_cache_begin (unsigned int) ;
 int trace_ocfs2_commit_cache_end (int ,unsigned int) ;
 int up_write (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int ocfs2_commit_cache(struct ocfs2_super *osb)
{
 int status = 0;
 unsigned int flushed;
 struct ocfs2_journal *journal = ((void*)0);

 journal = osb->journal;


 down_write(&journal->j_trans_barrier);

 flushed = atomic_read(&journal->j_num_trans);
 trace_ocfs2_commit_cache_begin(flushed);
 if (flushed == 0) {
  up_write(&journal->j_trans_barrier);
  goto finally;
 }

 jbd2_journal_lock_updates(journal->j_journal);
 status = jbd2_journal_flush(journal->j_journal);
 jbd2_journal_unlock_updates(journal->j_journal);
 if (status < 0) {
  up_write(&journal->j_trans_barrier);
  mlog_errno(status);
  goto finally;
 }

 ocfs2_inc_trans_id(journal);

 flushed = atomic_read(&journal->j_num_trans);
 atomic_set(&journal->j_num_trans, 0);
 up_write(&journal->j_trans_barrier);

 trace_ocfs2_commit_cache_end(journal->j_trans_id, flushed);

 ocfs2_wake_downconvert_thread(osb);
 wake_up(&journal->j_checkpointed);
finally:
 return status;
}
