
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct journal_head {int * b_cp_transaction; int * b_transaction; int * b_next_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int j_list_lock; } ;
typedef TYPE_1__ journal_t ;


 int JBUFFER_TRACE (struct journal_head*,char*) ;
 int __jbd2_journal_remove_checkpoint (struct journal_head*) ;
 struct journal_head* bh2jh (struct buffer_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_locked (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
__journal_try_to_free_buffer(journal_t *journal, struct buffer_head *bh)
{
 struct journal_head *jh;

 jh = bh2jh(bh);

 if (buffer_locked(bh) || buffer_dirty(bh))
  goto out;

 if (jh->b_next_transaction != ((void*)0) || jh->b_transaction != ((void*)0))
  goto out;

 spin_lock(&journal->j_list_lock);
 if (jh->b_cp_transaction != ((void*)0)) {

  JBUFFER_TRACE(jh, "remove from checkpoint list");
  __jbd2_journal_remove_checkpoint(jh);
 }
 spin_unlock(&journal->j_list_lock);
out:
 return;
}
