
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* t_journal; } ;
typedef TYPE_1__ transaction_t ;
struct journal_head {scalar_t__ b_jlist; TYPE_1__* b_next_transaction; scalar_t__ b_modified; TYPE_1__* b_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_9__ {int j_list_lock; TYPE_1__* j_committing_transaction; } ;
typedef TYPE_2__ journal_t ;
struct TYPE_10__ {TYPE_1__* h_transaction; } ;
typedef TYPE_3__ handle_t ;


 scalar_t__ BJ_Forget ;
 int BJ_Reserved ;
 int EROFS ;
 int JBUFFER_TRACE (struct journal_head*,char*) ;
 int J_ASSERT_JH (struct journal_head*,int) ;
 int __jbd2_journal_file_buffer (struct journal_head*,TYPE_1__*,int ) ;
 int buffer_locked (int ) ;
 int clear_buffer_dirty (int ) ;
 scalar_t__ is_handle_aborted (TYPE_3__*) ;
 struct journal_head* jbd2_journal_add_journal_head (struct buffer_head*) ;
 int jbd2_journal_cancel_revoke (TYPE_3__*,struct journal_head*) ;
 int jbd2_journal_put_journal_head (struct journal_head*) ;
 int jbd_debug (int,char*,struct journal_head*) ;
 int jbd_lock_bh_state (struct buffer_head*) ;
 int jbd_unlock_bh_state (struct buffer_head*) ;
 int jh2bh (struct journal_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int jbd2_journal_get_create_access(handle_t *handle, struct buffer_head *bh)
{
 transaction_t *transaction = handle->h_transaction;
 journal_t *journal;
 struct journal_head *jh = jbd2_journal_add_journal_head(bh);
 int err;

 jbd_debug(5, "journal_head %p\n", jh);
 err = -EROFS;
 if (is_handle_aborted(handle))
  goto out;
 journal = transaction->t_journal;
 err = 0;

 JBUFFER_TRACE(jh, "entry");







 jbd_lock_bh_state(bh);
 J_ASSERT_JH(jh, (jh->b_transaction == transaction ||
  jh->b_transaction == ((void*)0) ||
  (jh->b_transaction == journal->j_committing_transaction &&
     jh->b_jlist == BJ_Forget)));

 J_ASSERT_JH(jh, jh->b_next_transaction == ((void*)0));
 J_ASSERT_JH(jh, buffer_locked(jh2bh(jh)));

 if (jh->b_transaction == ((void*)0)) {
  clear_buffer_dirty(jh2bh(jh));

  jh->b_modified = 0;

  JBUFFER_TRACE(jh, "file as BJ_Reserved");
  spin_lock(&journal->j_list_lock);
  __jbd2_journal_file_buffer(jh, transaction, BJ_Reserved);
  spin_unlock(&journal->j_list_lock);
 } else if (jh->b_transaction == journal->j_committing_transaction) {

  jh->b_modified = 0;

  JBUFFER_TRACE(jh, "set next transaction");
  spin_lock(&journal->j_list_lock);
  jh->b_next_transaction = transaction;
  spin_unlock(&journal->j_list_lock);
 }
 jbd_unlock_bh_state(bh);
 JBUFFER_TRACE(jh, "cancelling revoke");
 jbd2_journal_cancel_revoke(handle, jh);
out:
 jbd2_journal_put_journal_head(jh);
 return err;
}
