
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_super {int sb; struct ocfs2_journal* journal; } ;
struct ocfs2_journal {int j_trans_barrier; } ;
struct TYPE_4__ {int h_ref; } ;
typedef TYPE_1__ handle_t ;


 int BUG_ON (int) ;
 int jbd2_journal_stop (TYPE_1__*) ;
 int mlog_errno (int) ;
 int sb_end_intwrite (int ) ;
 int up_read (int *) ;

int ocfs2_commit_trans(struct ocfs2_super *osb,
         handle_t *handle)
{
 int ret, nested;
 struct ocfs2_journal *journal = osb->journal;

 BUG_ON(!handle);

 nested = handle->h_ref > 1;
 ret = jbd2_journal_stop(handle);
 if (ret < 0)
  mlog_errno(ret);

 if (!nested) {
  up_read(&journal->j_trans_barrier);
  sb_end_intwrite(osb->sb);
 }

 return ret;
}
