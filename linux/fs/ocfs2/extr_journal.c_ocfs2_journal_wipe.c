
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_journal {int j_osb; int j_journal; } ;


 int BUG_ON (int) ;
 int jbd2_journal_wipe (int ,int) ;
 int mlog_errno (int) ;
 int ocfs2_journal_toggle_dirty (int ,int ,int ) ;

int ocfs2_journal_wipe(struct ocfs2_journal *journal, int full)
{
 int status;

 BUG_ON(!journal);

 status = jbd2_journal_wipe(journal->j_journal, full);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 status = ocfs2_journal_toggle_dirty(journal->j_osb, 0, 0);
 if (status < 0)
  mlog_errno(status);

bail:
 return status;
}
