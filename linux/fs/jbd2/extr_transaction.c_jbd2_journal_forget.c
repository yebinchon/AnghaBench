
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* t_journal; } ;
typedef TYPE_1__ transaction_t ;
struct journal_head {int b_modified; scalar_t__ b_cp_transaction; TYPE_1__* b_next_transaction; TYPE_1__* b_transaction; int b_frozen_data; int b_committed_data; } ;
struct buffer_head {int dummy; } ;
struct TYPE_8__ {int j_list_lock; TYPE_1__* j_committing_transaction; } ;
typedef TYPE_2__ journal_t ;
struct TYPE_9__ {int h_buffer_credits; TYPE_1__* h_transaction; } ;
typedef TYPE_3__ handle_t ;


 int BJ_Forget ;
 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EIO ;
 int EROFS ;
 int JBUFFER_TRACE (struct journal_head*,char*) ;
 int J_ASSERT (int) ;
 int J_ASSERT_JH (struct journal_head*,int) ;
 int J_EXPECT_JH (struct journal_head*,int,char*) ;
 int __bforget (struct buffer_head*) ;
 int __brelse (struct buffer_head*) ;
 int __jbd2_journal_file_buffer (struct journal_head*,TYPE_1__*,int ) ;
 int __jbd2_journal_remove_checkpoint (struct journal_head*) ;
 int __jbd2_journal_temp_unlink_buffer (struct journal_head*) ;
 int __jbd2_journal_unfile_buffer (struct journal_head*) ;
 struct journal_head* bh2jh (struct buffer_head*) ;
 int buffer_dirty (struct buffer_head*) ;
 int buffer_jbd (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_jbddirty (struct buffer_head*) ;
 scalar_t__ is_handle_aborted (TYPE_3__*) ;
 int jbd_lock_bh_state (struct buffer_head*) ;
 int jbd_unlock_bh_state (struct buffer_head*) ;
 int set_buffer_freed (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int jbd2_journal_forget (handle_t *handle, struct buffer_head *bh)
{
 transaction_t *transaction = handle->h_transaction;
 journal_t *journal;
 struct journal_head *jh;
 int drop_reserve = 0;
 int err = 0;
 int was_modified = 0;

 if (is_handle_aborted(handle))
  return -EROFS;
 journal = transaction->t_journal;

 BUFFER_TRACE(bh, "entry");

 jbd_lock_bh_state(bh);

 if (!buffer_jbd(bh))
  goto not_jbd;
 jh = bh2jh(bh);



 if (!J_EXPECT_JH(jh, !jh->b_committed_data,
    "inconsistent data on disk")) {
  err = -EIO;
  goto not_jbd;
 }


 was_modified = jh->b_modified;





 jh->b_modified = 0;

 if (jh->b_transaction == transaction) {
  J_ASSERT_JH(jh, !jh->b_frozen_data);




  clear_buffer_dirty(bh);
  clear_buffer_jbddirty(bh);

  JBUFFER_TRACE(jh, "belongs to current transaction: unfile");





  if (was_modified)
   drop_reserve = 1;
  spin_lock(&journal->j_list_lock);
  if (jh->b_cp_transaction) {
   __jbd2_journal_temp_unlink_buffer(jh);
   __jbd2_journal_file_buffer(jh, transaction, BJ_Forget);
  } else {
   __jbd2_journal_unfile_buffer(jh);
   if (!buffer_jbd(bh)) {
    spin_unlock(&journal->j_list_lock);
    goto not_jbd;
   }
  }
  spin_unlock(&journal->j_list_lock);
 } else if (jh->b_transaction) {
  J_ASSERT_JH(jh, (jh->b_transaction ==
     journal->j_committing_transaction));


  JBUFFER_TRACE(jh, "belongs to older transaction");







  set_buffer_freed(bh);

  if (!jh->b_next_transaction) {
   spin_lock(&journal->j_list_lock);
   jh->b_next_transaction = transaction;
   spin_unlock(&journal->j_list_lock);
  } else {
   J_ASSERT(jh->b_next_transaction == transaction);





   if (was_modified)
    drop_reserve = 1;
  }
 } else {





  spin_lock(&journal->j_list_lock);
  if (!jh->b_cp_transaction) {
   JBUFFER_TRACE(jh, "belongs to none transaction");
   spin_unlock(&journal->j_list_lock);
   goto not_jbd;
  }





  if (!buffer_dirty(bh)) {
   __jbd2_journal_remove_checkpoint(jh);
   spin_unlock(&journal->j_list_lock);
   goto not_jbd;
  }







  clear_buffer_dirty(bh);
  __jbd2_journal_file_buffer(jh, transaction, BJ_Forget);
  spin_unlock(&journal->j_list_lock);
 }

 jbd_unlock_bh_state(bh);
 __brelse(bh);
drop:
 if (drop_reserve) {

  handle->h_buffer_credits++;
 }
 return err;

not_jbd:
 jbd_unlock_bh_state(bh);
 __bforget(bh);
 goto drop;
}
