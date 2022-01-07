
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext2_super_block {void* s_wtime; void* s_free_inodes_count; void* s_free_blocks_count; } ;
struct TYPE_2__ {int s_sbh; int s_lock; } ;


 TYPE_1__* EXT2_SB (struct super_block*) ;
 void* cpu_to_le32 (int ) ;
 int ext2_clear_super_error (struct super_block*) ;
 int ext2_count_free_blocks (struct super_block*) ;
 int ext2_count_free_inodes (struct super_block*) ;
 int ktime_get_real_seconds () ;
 int mark_buffer_dirty (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sync_dirty_buffer (int ) ;

void ext2_sync_super(struct super_block *sb, struct ext2_super_block *es,
       int wait)
{
 ext2_clear_super_error(sb);
 spin_lock(&EXT2_SB(sb)->s_lock);
 es->s_free_blocks_count = cpu_to_le32(ext2_count_free_blocks(sb));
 es->s_free_inodes_count = cpu_to_le32(ext2_count_free_inodes(sb));
 es->s_wtime = cpu_to_le32(ktime_get_real_seconds());

 spin_unlock(&EXT2_SB(sb)->s_lock);
 mark_buffer_dirty(EXT2_SB(sb)->s_sbh);
 if (wait)
  sync_dirty_buffer(EXT2_SB(sb)->s_sbh);
}
