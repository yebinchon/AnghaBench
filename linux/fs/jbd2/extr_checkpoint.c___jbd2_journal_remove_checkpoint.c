
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct transaction_chp_stats_s {scalar_t__ cs_chp_time; } ;
struct TYPE_8__ {scalar_t__ t_state; int t_tid; struct transaction_chp_stats_s t_chp_stats; int * t_checkpoint_io_list; int * t_checkpoint_list; TYPE_3__* t_journal; } ;
typedef TYPE_2__ transaction_t ;
struct journal_head {TYPE_2__* b_cp_transaction; } ;
struct TYPE_9__ {TYPE_1__* j_fs_dev; } ;
typedef TYPE_3__ journal_t ;
struct TYPE_7__ {int bd_dev; } ;


 int JBUFFER_TRACE (struct journal_head*,char*) ;
 scalar_t__ T_FINISHED ;
 int __buffer_unlink (struct journal_head*) ;
 int __jbd2_journal_drop_transaction (TYPE_3__*,TYPE_2__*) ;
 int jbd2_journal_free_transaction (TYPE_2__*) ;
 int jbd2_journal_put_journal_head (struct journal_head*) ;
 scalar_t__ jbd2_time_diff (scalar_t__,int ) ;
 int jiffies ;
 int trace_jbd2_checkpoint_stats (int ,int ,struct transaction_chp_stats_s*) ;

int __jbd2_journal_remove_checkpoint(struct journal_head *jh)
{
 struct transaction_chp_stats_s *stats;
 transaction_t *transaction;
 journal_t *journal;
 int ret = 0;

 JBUFFER_TRACE(jh, "entry");

 if ((transaction = jh->b_cp_transaction) == ((void*)0)) {
  JBUFFER_TRACE(jh, "not on transaction");
  goto out;
 }
 journal = transaction->t_journal;

 JBUFFER_TRACE(jh, "removing from transaction");
 __buffer_unlink(jh);
 jh->b_cp_transaction = ((void*)0);
 jbd2_journal_put_journal_head(jh);

 if (transaction->t_checkpoint_list != ((void*)0) ||
     transaction->t_checkpoint_io_list != ((void*)0))
  goto out;
 if (transaction->t_state != T_FINISHED)
  goto out;



 stats = &transaction->t_chp_stats;
 if (stats->cs_chp_time)
  stats->cs_chp_time = jbd2_time_diff(stats->cs_chp_time,
          jiffies);
 trace_jbd2_checkpoint_stats(journal->j_fs_dev->bd_dev,
        transaction->t_tid, stats);

 __jbd2_journal_drop_transaction(journal, transaction);
 jbd2_journal_free_transaction(transaction);
 ret = 1;
out:
 return ret;
}
