
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ secno ;
typedef int __le32 ;
struct TYPE_2__ {int sb_fs_size; } ;


 int GFP_KERNEL ;
 int brelse (struct buffer_head*) ;
 int * hpfs_map_sector (struct super_block*,scalar_t__,struct buffer_head**,int) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;
 int kfree (int *) ;
 int * kmalloc_array (int,int,int ) ;
 int memcpy (char*,int *,int) ;
 int pr_err (char*) ;

__le32 *hpfs_load_bitmap_directory(struct super_block *s, secno bmp)
{
 struct buffer_head *bh;
 int n = (hpfs_sb(s)->sb_fs_size + 0x200000 - 1) >> 21;
 int i;
 __le32 *b;
 if (!(b = kmalloc_array(n, 512, GFP_KERNEL))) {
  pr_err("can't allocate memory for bitmap directory\n");
  return ((void*)0);
 }
 for (i=0;i<n;i++) {
  __le32 *d = hpfs_map_sector(s, bmp+i, &bh, n - i - 1);
  if (!d) {
   kfree(b);
   return ((void*)0);
  }
  memcpy((char *)b + 512 * i, d, 512);
  brelse(bh);
 }
 return b;
}
