
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int t_need_data_flush; int t_inode_list; int t_tid; TYPE_3__* t_journal; } ;
typedef TYPE_2__ transaction_t ;
struct jbd2_inode {unsigned long i_flags; int i_list; TYPE_2__* i_transaction; TYPE_2__* i_next_transaction; void* i_dirty_end; void* i_dirty_start; TYPE_1__* i_vfs_inode; } ;
typedef void* loff_t ;
struct TYPE_9__ {int j_list_lock; TYPE_2__* j_committing_transaction; } ;
typedef TYPE_3__ journal_t ;
struct TYPE_10__ {TYPE_2__* h_transaction; } ;
typedef TYPE_4__ handle_t ;
struct TYPE_7__ {int i_ino; } ;


 int EROFS ;
 int J_ASSERT (int) ;
 scalar_t__ is_handle_aborted (TYPE_4__*) ;
 int jbd_debug (int,char*,int ,int ) ;
 int list_add (int *,int *) ;
 void* max (void*,void*) ;
 void* min (void*,void*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int jbd2_journal_file_inode(handle_t *handle, struct jbd2_inode *jinode,
  unsigned long flags, loff_t start_byte, loff_t end_byte)
{
 transaction_t *transaction = handle->h_transaction;
 journal_t *journal;

 if (is_handle_aborted(handle))
  return -EROFS;
 journal = transaction->t_journal;

 jbd_debug(4, "Adding inode %lu, tid:%d\n", jinode->i_vfs_inode->i_ino,
   transaction->t_tid);

 spin_lock(&journal->j_list_lock);
 jinode->i_flags |= flags;

 if (jinode->i_dirty_end) {
  jinode->i_dirty_start = min(jinode->i_dirty_start, start_byte);
  jinode->i_dirty_end = max(jinode->i_dirty_end, end_byte);
 } else {
  jinode->i_dirty_start = start_byte;
  jinode->i_dirty_end = end_byte;
 }


 if (jinode->i_transaction == transaction ||
     jinode->i_next_transaction == transaction)
  goto done;






 if (!transaction->t_need_data_flush)
  transaction->t_need_data_flush = 1;


 if (jinode->i_transaction) {
  J_ASSERT(jinode->i_next_transaction == ((void*)0));
  J_ASSERT(jinode->i_transaction ==
     journal->j_committing_transaction);
  jinode->i_next_transaction = transaction;
  goto done;
 }

 J_ASSERT(!jinode->i_next_transaction);
 jinode->i_transaction = transaction;
 list_add(&jinode->i_list, &transaction->t_inode_list);
done:
 spin_unlock(&journal->j_list_lock);

 return 0;
}
