
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_transaction_handle {int dummy; } ;
struct inode {int i_state; scalar_t__ i_blocks; int i_sb; scalar_t__ i_nlink; int i_data; } ;
struct TYPE_2__ {scalar_t__ k_objectid; } ;


 TYPE_1__* INODE_PKEY (struct inode*) ;
 int I_NEW ;
 int JOURNAL_PER_BALANCE_CNT ;
 int REISERFS_QUOTA_INIT_BLOCKS (int ) ;
 int clear_inode (struct inode*) ;
 int dquot_drop (struct inode*) ;
 int dquot_free_inode (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int is_bad_inode (struct inode*) ;
 scalar_t__ journal_begin (struct reiserfs_transaction_handle*,int ,int) ;
 scalar_t__ journal_end (struct reiserfs_transaction_handle*) ;
 int reiserfs_delete_object (struct reiserfs_transaction_handle*,struct inode*) ;
 int reiserfs_delete_xattrs (struct inode*) ;
 int reiserfs_discard_prealloc (struct reiserfs_transaction_handle*,struct inode*) ;
 int reiserfs_update_inode_transaction (struct inode*) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_lock_nested (int ,int) ;
 int reiserfs_write_unlock (int ) ;
 int reiserfs_write_unlock_nested (int ) ;
 int remove_save_link (struct inode*,int ) ;
 int truncate_inode_pages_final (int *) ;

void reiserfs_evict_inode(struct inode *inode)
{




 int jbegin_count =
     JOURNAL_PER_BALANCE_CNT * 2 +
     2 * REISERFS_QUOTA_INIT_BLOCKS(inode->i_sb);
 struct reiserfs_transaction_handle th;
 int err;

 if (!inode->i_nlink && !is_bad_inode(inode))
  dquot_initialize(inode);

 truncate_inode_pages_final(&inode->i_data);
 if (inode->i_nlink)
  goto no_delete;






 if (!(inode->i_state & I_NEW) && INODE_PKEY(inode)->k_objectid != 0) {

  reiserfs_delete_xattrs(inode);

  reiserfs_write_lock(inode->i_sb);

  if (journal_begin(&th, inode->i_sb, jbegin_count))
   goto out;
  reiserfs_update_inode_transaction(inode);

  reiserfs_discard_prealloc(&th, inode);

  err = reiserfs_delete_object(&th, inode);






  if (!err) {
   int depth = reiserfs_write_unlock_nested(inode->i_sb);
   dquot_free_inode(inode);
   reiserfs_write_lock_nested(inode->i_sb, depth);
  }

  if (journal_end(&th))
   goto out;





  if (err)
      goto out;






  remove_save_link(inode, 0 );
out:
  reiserfs_write_unlock(inode->i_sb);
 } else {

  ;
 }


 clear_inode(inode);

 dquot_drop(inode);
 inode->i_blocks = 0;
 return;

no_delete:
 clear_inode(inode);
 dquot_drop(inode);
}
