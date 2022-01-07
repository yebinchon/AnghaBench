
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int sb_fs_size; int * sb_bmp_dir; } ;


 int hpfs_prefetch_sectors (struct super_block*,unsigned int,int) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;
 unsigned int le32_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;

void hpfs_prefetch_bitmap(struct super_block *s, unsigned bmp_block)
{
 unsigned to_prefetch, next_prefetch;
 unsigned n_bands = (hpfs_sb(s)->sb_fs_size + 0x3fff) >> 14;
 if (unlikely(bmp_block >= n_bands))
  return;
 to_prefetch = le32_to_cpu(hpfs_sb(s)->sb_bmp_dir[bmp_block]);
 if (unlikely(bmp_block + 1 >= n_bands))
  next_prefetch = 0;
 else
  next_prefetch = le32_to_cpu(hpfs_sb(s)->sb_bmp_dir[bmp_block + 1]);
 hpfs_prefetch_sectors(s, to_prefetch, 4 + 4 * (to_prefetch + 4 == next_prefetch));
}
