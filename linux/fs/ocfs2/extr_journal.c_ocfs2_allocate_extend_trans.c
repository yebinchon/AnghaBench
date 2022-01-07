
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;


 int BUG_ON (int) ;
 int OCFS2_MAX_TRANS_DATA ;
 int jbd2_journal_extend (TYPE_1__*,int ) ;
 int jbd2_journal_restart (TYPE_1__*,int ) ;
 int mlog_errno (int) ;
 int trace_ocfs2_allocate_extend_trans (int,int) ;

int ocfs2_allocate_extend_trans(handle_t *handle, int thresh)
{
 int status, old_nblks;

 BUG_ON(!handle);

 old_nblks = handle->h_buffer_credits;
 trace_ocfs2_allocate_extend_trans(old_nblks, thresh);

 if (old_nblks < thresh)
  return 0;

 status = jbd2_journal_extend(handle, OCFS2_MAX_TRANS_DATA);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 if (status > 0) {
  status = jbd2_journal_restart(handle, OCFS2_MAX_TRANS_DATA);
  if (status < 0)
   mlog_errno(status);
 }

bail:
 return status;
}
