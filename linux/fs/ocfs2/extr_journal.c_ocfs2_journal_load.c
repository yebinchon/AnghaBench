
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int * commit_task; int uuid_str; int slot_num; int sb; } ;
struct ocfs2_journal {int j_journal; struct ocfs2_super* j_osb; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (int *) ;
 int ML_ERROR ;
 int PTR_ERR (int *) ;
 int jbd2_journal_load (int ) ;
 int * kthread_run (int ,struct ocfs2_super*,char*,int ) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 int ocfs2_clear_journal_error (int ,int ,int ) ;
 int ocfs2_commit_thread ;
 int ocfs2_journal_toggle_dirty (struct ocfs2_super*,int,int) ;

int ocfs2_journal_load(struct ocfs2_journal *journal, int local, int replayed)
{
 int status = 0;
 struct ocfs2_super *osb;

 BUG_ON(!journal);

 osb = journal->j_osb;

 status = jbd2_journal_load(journal->j_journal);
 if (status < 0) {
  mlog(ML_ERROR, "Failed to load journal!\n");
  goto done;
 }

 ocfs2_clear_journal_error(osb->sb, journal->j_journal, osb->slot_num);

 status = ocfs2_journal_toggle_dirty(osb, 1, replayed);
 if (status < 0) {
  mlog_errno(status);
  goto done;
 }


 if (!local) {
  osb->commit_task = kthread_run(ocfs2_commit_thread, osb,
    "ocfs2cmt-%s", osb->uuid_str);
  if (IS_ERR(osb->commit_task)) {
   status = PTR_ERR(osb->commit_task);
   osb->commit_task = ((void*)0);
   mlog(ML_ERROR, "unable to launch ocfs2commit thread, "
        "error=%d", status);
   goto done;
  }
 } else
  osb->commit_task = ((void*)0);

done:
 return status;
}
