
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct super_block {int s_blocksize; } ;
struct reiserfs_bitmap_info {int free_count; } ;
struct buffer_head {int dummy; } ;


 struct reiserfs_bitmap_info* SB_AP_BITMAP (struct super_block*) ;
 int UINT_MAX ;
 int bmap_hash_id (struct super_block*,int ) ;
 int brelse (struct buffer_head*) ;
 struct buffer_head* reiserfs_read_bitmap_block (struct super_block*,int) ;

__attribute__((used)) static inline int block_group_used(struct super_block *s, u32 id)
{
 int bm = bmap_hash_id(s, id);
 struct reiserfs_bitmap_info *info = &SB_AP_BITMAP(s)[bm];
 if (info->free_count == UINT_MAX) {
  struct buffer_head *bh = reiserfs_read_bitmap_block(s, bm);
  brelse(bh);
 }

 if (info->free_count > ((s->s_blocksize << 3) * 60 / 100)) {
  return 0;
 }
 return 1;
}
