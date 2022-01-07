
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
typedef int secno ;
typedef int __le32 ;
struct TYPE_2__ {int sb_fs_size; int * sb_bmp_dir; scalar_t__ sb_chk; } ;


 int hpfs_error (struct super_block*,char*,unsigned int,...) ;
 int * hpfs_map_4sectors (struct super_block*,int,struct quad_buffer_head*,int) ;
 int hpfs_prefetch_bitmap (struct super_block*,unsigned int) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;
 int le32_to_cpu (int ) ;

__le32 *hpfs_map_bitmap(struct super_block *s, unsigned bmp_block,
    struct quad_buffer_head *qbh, char *id)
{
 secno sec;
 __le32 *ret;
 unsigned n_bands = (hpfs_sb(s)->sb_fs_size + 0x3fff) >> 14;
 if (hpfs_sb(s)->sb_chk) if (bmp_block >= n_bands) {
  hpfs_error(s, "hpfs_map_bitmap called with bad parameter: %08x at %s", bmp_block, id);
  return ((void*)0);
 }
 sec = le32_to_cpu(hpfs_sb(s)->sb_bmp_dir[bmp_block]);
 if (!sec || sec > hpfs_sb(s)->sb_fs_size-4) {
  hpfs_error(s, "invalid bitmap block pointer %08x -> %08x at %s", bmp_block, sec, id);
  return ((void*)0);
 }
 ret = hpfs_map_4sectors(s, sec, qbh, 4);
 if (ret) hpfs_prefetch_bitmap(s, bmp_block + 1);
 return ret;
}
