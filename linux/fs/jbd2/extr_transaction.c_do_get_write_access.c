
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* t_journal; } ;
typedef TYPE_2__ transaction_t ;
struct journal_head {char* b_frozen_data; scalar_t__ b_jlist; TYPE_2__* b_next_transaction; TYPE_2__* b_transaction; scalar_t__ b_modified; } ;
struct buffer_head {int b_size; int b_state; TYPE_1__* b_bdev; } ;
struct TYPE_11__ {TYPE_2__* j_committing_transaction; int j_list_lock; } ;
typedef TYPE_3__ journal_t ;
struct TYPE_12__ {TYPE_2__* h_transaction; } ;
typedef TYPE_4__ handle_t ;
struct TYPE_9__ {int bd_dev; } ;


 int BH_Shadow ;
 scalar_t__ BJ_Metadata ;
 int BJ_Reserved ;
 int EROFS ;
 int GFP_NOFS ;
 int HZ ;
 int JBUFFER_TRACE (struct journal_head*,char*) ;
 int J_ASSERT_JH (struct journal_head*,int) ;
 int TASK_UNINTERRUPTIBLE ;
 int __GFP_NOFAIL ;
 int __jbd2_journal_file_buffer (struct journal_head*,TYPE_2__*,int ) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_shadow (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 scalar_t__ is_handle_aborted (TYPE_4__*) ;
 char* jbd2_alloc (int ,int) ;
 int jbd2_free (char*,int ) ;
 int jbd2_freeze_jh_data (struct journal_head*) ;
 int jbd2_journal_cancel_revoke (TYPE_4__*,struct journal_head*) ;
 unsigned long jbd2_time_diff (unsigned long,unsigned long) ;
 int jbd_debug (int,char*,struct journal_head*,int) ;
 int jbd_lock_bh_state (struct buffer_head*) ;
 int jbd_unlock_bh_state (struct buffer_head*) ;
 struct buffer_head* jh2bh (struct journal_head*) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int lock_buffer (struct buffer_head*) ;
 int set_buffer_jbddirty (struct buffer_head*) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_jbd2_lock_buffer_stall (int ,int ) ;
 scalar_t__ unlikely (char*) ;
 int unlock_buffer (struct buffer_head*) ;
 int wait_on_bit_io (int *,int ,int ) ;
 int warn_dirty_buffer (struct buffer_head*) ;

__attribute__((used)) static int
do_get_write_access(handle_t *handle, struct journal_head *jh,
   int force_copy)
{
 struct buffer_head *bh;
 transaction_t *transaction = handle->h_transaction;
 journal_t *journal;
 int error;
 char *frozen_buffer = ((void*)0);
 unsigned long start_lock, time_lock;

 if (is_handle_aborted(handle))
  return -EROFS;
 journal = transaction->t_journal;

 jbd_debug(5, "journal_head %p, force_copy %d\n", jh, force_copy);

 JBUFFER_TRACE(jh, "entry");
repeat:
 bh = jh2bh(jh);



  start_lock = jiffies;
 lock_buffer(bh);
 jbd_lock_bh_state(bh);


 time_lock = jbd2_time_diff(start_lock, jiffies);
 if (time_lock > HZ/10)
  trace_jbd2_lock_buffer_stall(bh->b_bdev->bd_dev,
   jiffies_to_msecs(time_lock));
 if (buffer_dirty(bh)) {




  if (jh->b_transaction) {
   J_ASSERT_JH(jh,
    jh->b_transaction == transaction ||
    jh->b_transaction ==
     journal->j_committing_transaction);
   if (jh->b_next_transaction)
    J_ASSERT_JH(jh, jh->b_next_transaction ==
       transaction);
   warn_dirty_buffer(bh);
  }





  JBUFFER_TRACE(jh, "Journalling dirty buffer");
  clear_buffer_dirty(bh);
  set_buffer_jbddirty(bh);
 }

 unlock_buffer(bh);

 error = -EROFS;
 if (is_handle_aborted(handle)) {
  jbd_unlock_bh_state(bh);
  goto out;
 }
 error = 0;





 if (jh->b_transaction == transaction ||
     jh->b_next_transaction == transaction)
  goto done;





 jh->b_modified = 0;






 if (!jh->b_transaction) {
  JBUFFER_TRACE(jh, "no transaction");
  J_ASSERT_JH(jh, !jh->b_next_transaction);
  JBUFFER_TRACE(jh, "file as BJ_Reserved");





  smp_wmb();
  spin_lock(&journal->j_list_lock);
  __jbd2_journal_file_buffer(jh, transaction, BJ_Reserved);
  spin_unlock(&journal->j_list_lock);
  goto done;
 }




 if (jh->b_frozen_data) {
  JBUFFER_TRACE(jh, "has frozen data");
  J_ASSERT_JH(jh, jh->b_next_transaction == ((void*)0));
  goto attach_next;
 }

 JBUFFER_TRACE(jh, "owned by older transaction");
 J_ASSERT_JH(jh, jh->b_next_transaction == ((void*)0));
 J_ASSERT_JH(jh, jh->b_transaction == journal->j_committing_transaction);
 if (buffer_shadow(bh)) {
  JBUFFER_TRACE(jh, "on shadow: sleep");
  jbd_unlock_bh_state(bh);
  wait_on_bit_io(&bh->b_state, BH_Shadow, TASK_UNINTERRUPTIBLE);
  goto repeat;
 }
 if (jh->b_jlist == BJ_Metadata || force_copy) {
  JBUFFER_TRACE(jh, "generate frozen data");
  if (!frozen_buffer) {
   JBUFFER_TRACE(jh, "allocate memory for buffer");
   jbd_unlock_bh_state(bh);
   frozen_buffer = jbd2_alloc(jh2bh(jh)->b_size,
         GFP_NOFS | __GFP_NOFAIL);
   goto repeat;
  }
  jh->b_frozen_data = frozen_buffer;
  frozen_buffer = ((void*)0);
  jbd2_freeze_jh_data(jh);
 }
attach_next:





 smp_wmb();
 jh->b_next_transaction = transaction;

done:
 jbd_unlock_bh_state(bh);





 jbd2_journal_cancel_revoke(handle, jh);

out:
 if (unlikely(frozen_buffer))
  jbd2_free(frozen_buffer, bh->b_size);

 JBUFFER_TRACE(jh, "exit");
 return error;
}
