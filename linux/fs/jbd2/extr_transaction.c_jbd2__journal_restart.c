
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_16__ {int t_handle_lock; int t_tid; int t_updates; int t_outstanding_credits; TYPE_3__* t_journal; } ;
typedef TYPE_2__ transaction_t ;
typedef int tid_t ;
struct TYPE_17__ {int j_trans_commit_map; int j_state_lock; int j_commit_request; int j_wait_updates; } ;
typedef TYPE_3__ journal_t ;
struct TYPE_18__ {int h_buffer_credits; int saved_alloc_context; TYPE_2__* h_transaction; TYPE_1__* h_rsv_handle; } ;
typedef TYPE_4__ handle_t ;
typedef int gfp_t ;
struct TYPE_15__ {int h_buffer_credits; } ;
struct TYPE_14__ {int * journal_info; } ;


 int J_ASSERT (int) ;
 int _THIS_IP_ ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 TYPE_13__* current ;
 scalar_t__ is_handle_aborted (TYPE_4__*) ;
 int jbd2_log_start_commit (TYPE_3__*,int ) ;
 int jbd_debug (int,char*,TYPE_4__*) ;
 TYPE_4__* journal_current_handle () ;
 int memalloc_nofs_restore (int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int rwsem_release (int *,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int start_this_handle (TYPE_3__*,TYPE_4__*,int ) ;
 int sub_reserved_credits (TYPE_3__*,int ) ;
 int tid_geq (int ,int ) ;
 int wake_up (int *) ;

int jbd2__journal_restart(handle_t *handle, int nblocks, gfp_t gfp_mask)
{
 transaction_t *transaction = handle->h_transaction;
 journal_t *journal;
 tid_t tid;
 int need_to_start, ret;



 if (is_handle_aborted(handle))
  return 0;
 journal = transaction->t_journal;





 J_ASSERT(atomic_read(&transaction->t_updates) > 0);
 J_ASSERT(journal_current_handle() == handle);

 read_lock(&journal->j_state_lock);
 spin_lock(&transaction->t_handle_lock);
 atomic_sub(handle->h_buffer_credits,
     &transaction->t_outstanding_credits);
 if (handle->h_rsv_handle) {
  sub_reserved_credits(journal,
         handle->h_rsv_handle->h_buffer_credits);
 }
 if (atomic_dec_and_test(&transaction->t_updates))
  wake_up(&journal->j_wait_updates);
 tid = transaction->t_tid;
 spin_unlock(&transaction->t_handle_lock);
 handle->h_transaction = ((void*)0);
 current->journal_info = ((void*)0);

 jbd_debug(2, "restarting handle %p\n", handle);
 need_to_start = !tid_geq(journal->j_commit_request, tid);
 read_unlock(&journal->j_state_lock);
 if (need_to_start)
  jbd2_log_start_commit(journal, tid);

 rwsem_release(&journal->j_trans_commit_map, 1, _THIS_IP_);
 handle->h_buffer_credits = nblocks;





 memalloc_nofs_restore(handle->saved_alloc_context);
 ret = start_this_handle(journal, handle, gfp_mask);
 return ret;
}
