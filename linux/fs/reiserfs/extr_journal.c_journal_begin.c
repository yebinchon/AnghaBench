
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_refcount; struct reiserfs_transaction_handle* t_handle_save; struct super_block* t_super; } ;
struct TYPE_2__ {struct reiserfs_transaction_handle* journal_info; } ;


 int BUG_ON (int) ;
 int JBEGIN_REG ;
 TYPE_1__* current ;
 int do_journal_begin_r (struct reiserfs_transaction_handle*,struct super_block*,unsigned long,int ) ;
 int memcpy (struct reiserfs_transaction_handle*,struct reiserfs_transaction_handle*,int) ;
 int reiserfs_warning (struct super_block*,char*,char*) ;

int journal_begin(struct reiserfs_transaction_handle *th,
    struct super_block *sb, unsigned long nblocks)
{
 struct reiserfs_transaction_handle *cur_th = current->journal_info;
 int ret;

 th->t_handle_save = ((void*)0);
 if (cur_th) {

  if (cur_th->t_super == sb) {
   BUG_ON(!cur_th->t_refcount);
   cur_th->t_refcount++;
   memcpy(th, cur_th, sizeof(*th));
   if (th->t_refcount <= 1)
    reiserfs_warning(sb, "reiserfs-2005",
       "BAD: refcount <= 1, but "
       "journal_info != 0");
   return 0;
  } else {





   reiserfs_warning(sb, "clm-2100",
      "nesting info a different FS");
   th->t_handle_save = current->journal_info;
   current->journal_info = th;
  }
 } else {
  current->journal_info = th;
 }
 ret = do_journal_begin_r(th, sb, nblocks, JBEGIN_REG);
 BUG_ON(current->journal_info != th);





 if (ret)
  current->journal_info = th->t_handle_save;
 else
  BUG_ON(!th->t_refcount);

 return ret;
}
