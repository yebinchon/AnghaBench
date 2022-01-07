
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transaction_t ;
struct journal_head {scalar_t__ b_cp_transaction; } ;
struct buffer_head {int dummy; } ;


 int BJ_Forget ;
 int JBUFFER_TRACE (struct journal_head*,char*) ;
 int __jbd2_journal_file_buffer (struct journal_head*,int *,int ) ;
 int __jbd2_journal_temp_unlink_buffer (struct journal_head*) ;
 int __jbd2_journal_unfile_buffer (struct journal_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 struct buffer_head* jh2bh (struct journal_head*) ;

__attribute__((used)) static int __dispose_buffer(struct journal_head *jh, transaction_t *transaction)
{
 int may_free = 1;
 struct buffer_head *bh = jh2bh(jh);

 if (jh->b_cp_transaction) {
  JBUFFER_TRACE(jh, "on running+cp transaction");
  __jbd2_journal_temp_unlink_buffer(jh);





  clear_buffer_dirty(bh);
  __jbd2_journal_file_buffer(jh, transaction, BJ_Forget);
  may_free = 0;
 } else {
  JBUFFER_TRACE(jh, "on running transaction");
  __jbd2_journal_unfile_buffer(jh);
 }
 return may_free;
}
