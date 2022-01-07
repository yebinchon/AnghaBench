
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;


 int BUG_ON (int) ;
 int jbd2_journal_extend (TYPE_1__*,int) ;
 int jbd2_journal_restart (TYPE_1__*,int) ;
 int mlog_errno (int) ;
 int trace_ocfs2_extend_trans (int,int) ;
 int trace_ocfs2_extend_trans_restart (int) ;

int ocfs2_extend_trans(handle_t *handle, int nblocks)
{
 int status, old_nblocks;

 BUG_ON(!handle);
 BUG_ON(nblocks < 0);

 if (!nblocks)
  return 0;

 old_nblocks = handle->h_buffer_credits;

 trace_ocfs2_extend_trans(old_nblocks, nblocks);




 status = jbd2_journal_extend(handle, nblocks);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }


 if (status > 0) {
  trace_ocfs2_extend_trans_restart(old_nblocks + nblocks);
  status = jbd2_journal_restart(handle,
           old_nblocks + nblocks);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }
 }

 status = 0;
bail:
 return status;
}
