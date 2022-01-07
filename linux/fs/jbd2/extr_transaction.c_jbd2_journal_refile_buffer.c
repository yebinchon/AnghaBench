
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct journal_head {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int j_list_lock; } ;
typedef TYPE_1__ journal_t ;


 int __brelse (struct buffer_head*) ;
 int __jbd2_journal_refile_buffer (struct journal_head*) ;
 int get_bh (struct buffer_head*) ;
 int jbd_lock_bh_state (struct buffer_head*) ;
 int jbd_unlock_bh_state (struct buffer_head*) ;
 struct buffer_head* jh2bh (struct journal_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void jbd2_journal_refile_buffer(journal_t *journal, struct journal_head *jh)
{
 struct buffer_head *bh = jh2bh(jh);


 get_bh(bh);
 jbd_lock_bh_state(bh);
 spin_lock(&journal->j_list_lock);
 __jbd2_journal_refile_buffer(jh);
 jbd_unlock_bh_state(bh);
 spin_unlock(&journal->j_list_lock);
 __brelse(bh);
}
