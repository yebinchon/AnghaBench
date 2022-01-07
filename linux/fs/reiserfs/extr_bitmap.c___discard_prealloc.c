
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int t_super; int t_trans_id; } ;
struct inode {int dummy; } ;
struct reiserfs_inode_info {unsigned long i_prealloc_block; scalar_t__ i_prealloc_count; int i_prealloc_list; struct inode vfs_inode; } ;
typedef int b_blocknr_t ;


 int BUG_ON (int) ;
 int list_del_init (int *) ;
 int reiserfs_error (int ,char*,char*) ;
 int reiserfs_free_prealloc_block (struct reiserfs_transaction_handle*,struct inode*,int ) ;
 int reiserfs_update_sd (struct reiserfs_transaction_handle*,struct inode*) ;

__attribute__((used)) static void __discard_prealloc(struct reiserfs_transaction_handle *th,
          struct reiserfs_inode_info *ei)
{
 unsigned long save = ei->i_prealloc_block;
 int dirty = 0;
 struct inode *inode = &ei->vfs_inode;

 BUG_ON(!th->t_trans_id);





 while (ei->i_prealloc_count > 0) {
  b_blocknr_t block_to_free;







  block_to_free = ei->i_prealloc_block++;
  ei->i_prealloc_count--;
  reiserfs_free_prealloc_block(th, inode, block_to_free);
  dirty = 1;
 }
 if (dirty)
  reiserfs_update_sd(th, inode);
 ei->i_prealloc_block = save;
 list_del_init(&ei->i_prealloc_list);
}
