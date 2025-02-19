
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct hpfs_spare_block {int dirty; scalar_t__ old_wrote; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_chkdsk; } ;


 int brelse (struct buffer_head*) ;
 struct hpfs_spare_block* hpfs_map_sector (struct super_block*,int,struct buffer_head**,int ) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int sb_rdonly (struct super_block*) ;
 int sync_dirty_buffer (struct buffer_head*) ;

__attribute__((used)) static void mark_dirty(struct super_block *s, int remount)
{
 if (hpfs_sb(s)->sb_chkdsk && (remount || !sb_rdonly(s))) {
  struct buffer_head *bh;
  struct hpfs_spare_block *sb;
  if ((sb = hpfs_map_sector(s, 17, &bh, 0))) {
   sb->dirty = 1;
   sb->old_wrote = 0;
   mark_buffer_dirty(bh);
   sync_dirty_buffer(bh);
   brelse(bh);
  }
 }
}
