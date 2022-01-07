
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct hpfs_sb_info {unsigned int sb_n_free_dnodes; int sb_dmap; } ;


 unsigned int hpfs_count_one_bitmap (struct super_block*,int ) ;
 struct hpfs_sb_info* hpfs_sb (struct super_block*) ;

unsigned hpfs_get_free_dnodes(struct super_block *s)
{
 struct hpfs_sb_info *sbi = hpfs_sb(s);
 if (sbi->sb_n_free_dnodes == (unsigned)-1) {
  unsigned c = hpfs_count_one_bitmap(s, sbi->sb_dmap);
  if (c == (unsigned)-1)
   return 0;
  sbi->sb_n_free_dnodes = c;
 }
 return sbi->sb_n_free_dnodes;
}
