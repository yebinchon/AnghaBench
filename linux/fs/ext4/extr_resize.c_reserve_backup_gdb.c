
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct inode {int i_blocks; struct super_block* i_sb; } ;
struct ext4_iloc {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef int handle_t ;
typedef int ext4_group_t ;
typedef int ext4_fsblk_t ;
typedef int __le32 ;
struct TYPE_8__ {int * i_data; } ;
struct TYPE_7__ {int s_cluster_bits; int s_gdb_count; TYPE_2__* s_sbh; TYPE_1__* s_es; } ;
struct TYPE_6__ {int b_blocknr; } ;
struct TYPE_5__ {int s_reserved_gdt_blocks; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EINVAL ;
 int ENOMEM ;
 int EXT4_ADDR_PER_BLOCK (struct super_block*) ;
 int EXT4_BLOCKS_PER_GROUP (struct super_block*) ;
 int EXT4_DIND_BLOCK ;
 TYPE_4__* EXT4_I (struct inode*) ;
 TYPE_3__* EXT4_SB (struct super_block*) ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (scalar_t__) ;
 int ext4_handle_dirty_metadata (int *,int *,struct buffer_head*) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int ext4_mark_iloc_dirty (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_reserve_inode_write (int *,struct inode*,struct ext4_iloc*) ;
 struct buffer_head* ext4_sb_bread (struct super_block*,int,int ) ;
 int ext4_warning (struct super_block*,char*,int,long) ;
 int kfree (struct buffer_head**) ;
 struct buffer_head** kmalloc_array (int,int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int verify_reserved_gdb (struct super_block*,int,struct buffer_head*) ;

__attribute__((used)) static int reserve_backup_gdb(handle_t *handle, struct inode *inode,
         ext4_group_t group)
{
 struct super_block *sb = inode->i_sb;
 int reserved_gdb =le16_to_cpu(EXT4_SB(sb)->s_es->s_reserved_gdt_blocks);
 int cluster_bits = EXT4_SB(sb)->s_cluster_bits;
 struct buffer_head **primary;
 struct buffer_head *dind;
 struct ext4_iloc iloc;
 ext4_fsblk_t blk;
 __le32 *data, *end;
 int gdbackups = 0;
 int res, i;
 int err;

 primary = kmalloc_array(reserved_gdb, sizeof(*primary), GFP_NOFS);
 if (!primary)
  return -ENOMEM;

 data = EXT4_I(inode)->i_data + EXT4_DIND_BLOCK;
 dind = ext4_sb_bread(sb, le32_to_cpu(*data), 0);
 if (IS_ERR(dind)) {
  err = PTR_ERR(dind);
  dind = ((void*)0);
  goto exit_free;
 }

 blk = EXT4_SB(sb)->s_sbh->b_blocknr + 1 + EXT4_SB(sb)->s_gdb_count;
 data = (__le32 *)dind->b_data + (EXT4_SB(sb)->s_gdb_count %
      EXT4_ADDR_PER_BLOCK(sb));
 end = (__le32 *)dind->b_data + EXT4_ADDR_PER_BLOCK(sb);


 for (res = 0; res < reserved_gdb; res++, blk++) {
  if (le32_to_cpu(*data) != blk) {
   ext4_warning(sb, "reserved block %llu"
         " not at offset %ld",
         blk,
         (long)(data - (__le32 *)dind->b_data));
   err = -EINVAL;
   goto exit_bh;
  }
  primary[res] = ext4_sb_bread(sb, blk, 0);
  if (IS_ERR(primary[res])) {
   err = PTR_ERR(primary[res]);
   primary[res] = ((void*)0);
   goto exit_bh;
  }
  gdbackups = verify_reserved_gdb(sb, group, primary[res]);
  if (gdbackups < 0) {
   brelse(primary[res]);
   err = gdbackups;
   goto exit_bh;
  }
  if (++data >= end)
   data = (__le32 *)dind->b_data;
 }

 for (i = 0; i < reserved_gdb; i++) {
  BUFFER_TRACE(primary[i], "get_write_access");
  if ((err = ext4_journal_get_write_access(handle, primary[i])))
   goto exit_bh;
 }

 if ((err = ext4_reserve_inode_write(handle, inode, &iloc)))
  goto exit_bh;





 blk = group * EXT4_BLOCKS_PER_GROUP(sb);
 for (i = 0; i < reserved_gdb; i++) {
  int err2;
  data = (__le32 *)primary[i]->b_data;



  data[gdbackups] = cpu_to_le32(blk + primary[i]->b_blocknr);
  err2 = ext4_handle_dirty_metadata(handle, ((void*)0), primary[i]);
  if (!err)
   err = err2;
 }

 inode->i_blocks += reserved_gdb * sb->s_blocksize >> (9 - cluster_bits);
 ext4_mark_iloc_dirty(handle, inode, &iloc);

exit_bh:
 while (--res >= 0)
  brelse(primary[res]);
 brelse(dind);

exit_free:
 kfree(primary);

 return err;
}
