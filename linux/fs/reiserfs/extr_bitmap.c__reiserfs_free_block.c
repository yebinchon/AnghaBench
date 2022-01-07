
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_trans_id; struct super_block* t_super; } ;
struct reiserfs_super_block {int dummy; } ;
struct reiserfs_bitmap_info {int free_count; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_data; } ;
typedef int b_blocknr_t ;


 int BUG_ON (int) ;
 int PROC_INFO_INC (struct super_block*,int ) ;
 struct reiserfs_bitmap_info* SB_AP_BITMAP (struct super_block*) ;
 struct buffer_head* SB_BUFFER_WITH_SB (struct super_block*) ;
 struct reiserfs_super_block* SB_DISK_SUPER_BLOCK (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int dquot_free_block_nodirty (struct inode*,int) ;
 int free_block ;
 int get_bit_address (struct super_block*,int ,unsigned int*,unsigned int*) ;
 int journal_mark_dirty (struct reiserfs_transaction_handle*,struct buffer_head*) ;
 unsigned int reiserfs_bmap_count (struct super_block*) ;
 int reiserfs_error (struct super_block*,char*,char*,int ) ;
 int reiserfs_prepare_for_journal (struct super_block*,struct buffer_head*,int) ;
 struct buffer_head* reiserfs_read_bitmap_block (struct super_block*,unsigned int) ;
 int reiserfs_test_and_clear_le_bit (unsigned int,int ) ;
 int reiserfs_write_lock_nested (struct super_block*,int) ;
 int reiserfs_write_unlock_nested (struct super_block*) ;
 scalar_t__ sb_free_blocks (struct reiserfs_super_block*) ;
 int set_sb_free_blocks (struct reiserfs_super_block*,scalar_t__) ;

__attribute__((used)) static void _reiserfs_free_block(struct reiserfs_transaction_handle *th,
     struct inode *inode, b_blocknr_t block,
     int for_unformatted)
{
 struct super_block *s = th->t_super;
 struct reiserfs_super_block *rs;
 struct buffer_head *sbh, *bmbh;
 struct reiserfs_bitmap_info *apbi;
 unsigned int nr, offset;

 BUG_ON(!th->t_trans_id);
 PROC_INFO_INC(s, free_block);
 rs = SB_DISK_SUPER_BLOCK(s);
 sbh = SB_BUFFER_WITH_SB(s);
 apbi = SB_AP_BITMAP(s);

 get_bit_address(s, block, &nr, &offset);

 if (nr >= reiserfs_bmap_count(s)) {
  reiserfs_error(s, "vs-4075", "block %lu is out of range",
          block);
  return;
 }

 bmbh = reiserfs_read_bitmap_block(s, nr);
 if (!bmbh)
  return;

 reiserfs_prepare_for_journal(s, bmbh, 1);


 if (!reiserfs_test_and_clear_le_bit(offset, bmbh->b_data)) {
  reiserfs_error(s, "vs-4080",
          "block %lu: bit already cleared", block);
 }
 apbi[nr].free_count++;
 journal_mark_dirty(th, bmbh);
 brelse(bmbh);

 reiserfs_prepare_for_journal(s, sbh, 1);

 set_sb_free_blocks(rs, sb_free_blocks(rs) + 1);

 journal_mark_dirty(th, sbh);
 if (for_unformatted) {
  int depth = reiserfs_write_unlock_nested(s);
  dquot_free_block_nodirty(inode, 1);
  reiserfs_write_lock_nested(s, depth);
 }
}
