
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_state; TYPE_1__* i_mapping; int i_sb; } ;
typedef int journal_t ;
struct TYPE_6__ {int i_datasync_tid; } ;
struct TYPE_5__ {int * s_journal; } ;
struct TYPE_4__ {int private_list; } ;


 TYPE_3__* EXT4_I (struct inode*) ;
 TYPE_2__* EXT4_SB (int ) ;
 int I_DIRTY_DATASYNC ;
 int jbd2_transaction_committed (int *,int ) ;
 int list_empty (int *) ;

__attribute__((used)) static bool ext4_inode_datasync_dirty(struct inode *inode)
{
 journal_t *journal = EXT4_SB(inode->i_sb)->s_journal;

 if (journal)
  return !jbd2_transaction_committed(journal,
     EXT4_I(inode)->i_datasync_tid);

 if (!list_empty(&inode->i_mapping->private_list))
  return 1;
 return inode->i_state & I_DIRTY_DATASYNC;
}
