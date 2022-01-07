
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {scalar_t__ t_refcount; scalar_t__ t_trans_id; struct super_block* t_super; } ;
struct TYPE_2__ {int j_persistent_trans; } ;


 int EIO ;
 TYPE_1__* SB_JOURNAL (struct super_block*) ;
 int journal_end (struct reiserfs_transaction_handle*) ;
 int kfree (struct reiserfs_transaction_handle*) ;

int reiserfs_end_persistent_transaction(struct reiserfs_transaction_handle *th)
{
 struct super_block *s = th->t_super;
 int ret = 0;
 if (th->t_trans_id)
  ret = journal_end(th);
 else
  ret = -EIO;
 if (th->t_refcount == 0) {
  SB_JOURNAL(s)->j_persistent_trans--;
  kfree(th);
 }
 return ret;
}
