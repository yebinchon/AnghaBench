
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int sb_fs_size; int * sb_bmp_dir; } ;


 unsigned int COUNT_RD_AHEAD ;
 unsigned int hpfs_count_one_bitmap (struct super_block*,int ) ;
 int hpfs_prefetch_bitmap (struct super_block*,unsigned int) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static unsigned count_bitmaps(struct super_block *s)
{
 unsigned n, count, n_bands;
 n_bands = (hpfs_sb(s)->sb_fs_size + 0x3fff) >> 14;
 count = 0;
 for (n = 0; n < COUNT_RD_AHEAD; n++) {
  hpfs_prefetch_bitmap(s, n);
 }
 for (n = 0; n < n_bands; n++) {
  unsigned c;
  hpfs_prefetch_bitmap(s, n + COUNT_RD_AHEAD);
  c = hpfs_count_one_bitmap(s, le32_to_cpu(hpfs_sb(s)->sb_bmp_dir[n]));
  if (c != (unsigned)-1)
   count += c;
 }
 return count;
}
