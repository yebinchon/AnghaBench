
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct journal_head* t_checkpoint_list; } ;
typedef TYPE_1__ transaction_t ;
struct journal_head {struct journal_head* b_cpprev; struct journal_head* b_cpnext; TYPE_1__* b_cp_transaction; } ;


 int JBUFFER_TRACE (struct journal_head*,char*) ;
 int J_ASSERT_JH (struct journal_head*,int) ;
 scalar_t__ buffer_dirty (int ) ;
 scalar_t__ buffer_jbddirty (int ) ;
 int jbd2_journal_grab_journal_head (int ) ;
 int jh2bh (struct journal_head*) ;

void __jbd2_journal_insert_checkpoint(struct journal_head *jh,
          transaction_t *transaction)
{
 JBUFFER_TRACE(jh, "entry");
 J_ASSERT_JH(jh, buffer_dirty(jh2bh(jh)) || buffer_jbddirty(jh2bh(jh)));
 J_ASSERT_JH(jh, jh->b_cp_transaction == ((void*)0));


 jbd2_journal_grab_journal_head(jh2bh(jh));
 jh->b_cp_transaction = transaction;

 if (!transaction->t_checkpoint_list) {
  jh->b_cpnext = jh->b_cpprev = jh;
 } else {
  jh->b_cpnext = transaction->t_checkpoint_list;
  jh->b_cpprev = transaction->t_checkpoint_list->b_cpprev;
  jh->b_cpprev->b_cpnext = jh;
  jh->b_cpnext->b_cpprev = jh;
 }
 transaction->t_checkpoint_list = jh;
}
