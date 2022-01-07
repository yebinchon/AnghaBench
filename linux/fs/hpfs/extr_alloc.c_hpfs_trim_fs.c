
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct hpfs_sb_info {scalar_t__ sb_fs_size; scalar_t__ sb_dirband_start; scalar_t__ sb_dirband_size; } ;
typedef int __le32 ;


 int EIO ;
 int EROFS ;
 int do_trim (struct super_block*,unsigned int,unsigned int,scalar_t__,scalar_t__,scalar_t__,unsigned int*) ;
 unsigned int find_run (int *,unsigned int*) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_lock (struct super_block*) ;
 int * hpfs_map_bitmap (struct super_block*,unsigned int,struct quad_buffer_head*,char*) ;
 int * hpfs_map_dnode_bitmap (struct super_block*,struct quad_buffer_head*) ;
 struct hpfs_sb_info* hpfs_sb (struct super_block*) ;
 int hpfs_unlock (struct super_block*) ;
 scalar_t__ sb_rdonly (struct super_block*) ;

int hpfs_trim_fs(struct super_block *s, u64 start, u64 end, u64 minlen, unsigned *result)
{
 int err = 0;
 struct hpfs_sb_info *sbi = hpfs_sb(s);
 unsigned idx, len, start_bmp, end_bmp;
 __le32 *bmp;
 struct quad_buffer_head qbh;

 *result = 0;
 if (!end || end > sbi->sb_fs_size)
  end = sbi->sb_fs_size;
 if (start >= sbi->sb_fs_size)
  return 0;
 if (minlen > 0x4000)
  return 0;
 if (start < sbi->sb_dirband_start + sbi->sb_dirband_size && end > sbi->sb_dirband_start) {
  hpfs_lock(s);
  if (sb_rdonly(s)) {
   err = -EROFS;
   goto unlock_1;
  }
  if (!(bmp = hpfs_map_dnode_bitmap(s, &qbh))) {
   err = -EIO;
   goto unlock_1;
  }
  idx = 0;
  while ((len = find_run(bmp, &idx)) && !err) {
   err = do_trim(s, sbi->sb_dirband_start + idx * 4, len * 4, start, end, minlen, result);
   idx += len;
  }
  hpfs_brelse4(&qbh);
unlock_1:
  hpfs_unlock(s);
 }
 start_bmp = start >> 14;
 end_bmp = (end + 0x3fff) >> 14;
 while (start_bmp < end_bmp && !err) {
  hpfs_lock(s);
  if (sb_rdonly(s)) {
   err = -EROFS;
   goto unlock_2;
  }
  if (!(bmp = hpfs_map_bitmap(s, start_bmp, &qbh, "trim"))) {
   err = -EIO;
   goto unlock_2;
  }
  idx = 0;
  while ((len = find_run(bmp, &idx)) && !err) {
   err = do_trim(s, (start_bmp << 14) + idx, len, start, end, minlen, result);
   idx += len;
  }
  hpfs_brelse4(&qbh);
unlock_2:
  hpfs_unlock(s);
  start_bmp++;
 }
 return err;
}
