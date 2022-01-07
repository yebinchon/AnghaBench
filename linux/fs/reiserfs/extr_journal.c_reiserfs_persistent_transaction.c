
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_refcount; } ;
struct TYPE_4__ {int j_persistent_trans; } ;
struct TYPE_3__ {struct reiserfs_transaction_handle* journal_info; } ;


 int BUG_ON (int) ;
 int GFP_NOFS ;
 TYPE_2__* SB_JOURNAL (struct super_block*) ;
 TYPE_1__* current ;
 int journal_begin (struct reiserfs_transaction_handle*,struct super_block*,int) ;
 int kfree (struct reiserfs_transaction_handle*) ;
 struct reiserfs_transaction_handle* kmalloc (int,int ) ;
 scalar_t__ reiserfs_transaction_running (struct super_block*) ;

struct reiserfs_transaction_handle *reiserfs_persistent_transaction(struct
            super_block
            *s,
            int nblocks)
{
 int ret;
 struct reiserfs_transaction_handle *th;





 if (reiserfs_transaction_running(s)) {
  th = current->journal_info;
  th->t_refcount++;
  BUG_ON(th->t_refcount < 2);

  return th;
 }
 th = kmalloc(sizeof(struct reiserfs_transaction_handle), GFP_NOFS);
 if (!th)
  return ((void*)0);
 ret = journal_begin(th, s, nblocks);
 if (ret) {
  kfree(th);
  return ((void*)0);
 }

 SB_JOURNAL(s)->j_persistent_trans++;
 return th;
}
