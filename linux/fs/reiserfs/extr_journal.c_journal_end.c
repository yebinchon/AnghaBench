
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_refcount; scalar_t__ t_trans_id; struct super_block* t_super; } ;
struct TYPE_2__ {struct reiserfs_transaction_handle* journal_info; } ;


 int BUG_ON (int) ;
 int EIO ;
 int WARN_ON (int) ;
 TYPE_1__* current ;
 int do_journal_end (struct reiserfs_transaction_handle*,int ) ;
 int memcpy (struct reiserfs_transaction_handle*,struct reiserfs_transaction_handle*,int) ;
 int reiserfs_warning (struct super_block*,char*,char*,int) ;

int journal_end(struct reiserfs_transaction_handle *th)
{
 struct super_block *sb = th->t_super;
 if (!current->journal_info && th->t_refcount > 1)
  reiserfs_warning(sb, "REISER-NESTING",
     "th NULL, refcount %d", th->t_refcount);

 if (!th->t_trans_id) {
  WARN_ON(1);
  return -EIO;
 }

 th->t_refcount--;
 if (th->t_refcount > 0) {
  struct reiserfs_transaction_handle *cur_th =
      current->journal_info;





  BUG_ON(cur_th->t_super != th->t_super);

  if (th != cur_th) {
   memcpy(current->journal_info, th, sizeof(*th));
   th->t_trans_id = 0;
  }
  return 0;
 } else {
  return do_journal_end(th, 0);
 }
}
