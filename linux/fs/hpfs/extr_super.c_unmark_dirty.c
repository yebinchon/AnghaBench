
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_bdev; } ;
struct hpfs_spare_block {int dirty; int old_wrote; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int sb_chkdsk; int sb_was_error; } ;


 int brelse (struct buffer_head*) ;
 struct hpfs_spare_block* hpfs_map_sector (struct super_block*,int,struct buffer_head**,int ) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 int sync_blockdev (int ) ;
 int sync_dirty_buffer (struct buffer_head*) ;

__attribute__((used)) static void unmark_dirty(struct super_block *s)
{
 struct buffer_head *bh;
 struct hpfs_spare_block *sb;
 if (sb_rdonly(s)) return;
 sync_blockdev(s->s_bdev);
 if ((sb = hpfs_map_sector(s, 17, &bh, 0))) {
  sb->dirty = hpfs_sb(s)->sb_chkdsk > 1 - hpfs_sb(s)->sb_was_error;
  sb->old_wrote = hpfs_sb(s)->sb_chkdsk >= 2 && !hpfs_sb(s)->sb_was_error;
  mark_buffer_dirty(bh);
  sync_dirty_buffer(bh);
  brelse(bh);
 }
}
