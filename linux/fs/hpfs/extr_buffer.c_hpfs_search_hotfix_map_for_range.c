
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct hpfs_sb_info {unsigned int n_hotfixes; scalar_t__* hotfix_from; } ;
typedef scalar_t__ secno ;


 struct hpfs_sb_info* hpfs_sb (struct super_block*) ;
 scalar_t__ unlikely (int) ;

unsigned hpfs_search_hotfix_map_for_range(struct super_block *s, secno sec, unsigned n)
{
 unsigned i;
 struct hpfs_sb_info *sbi = hpfs_sb(s);
 for (i = 0; unlikely(i < sbi->n_hotfixes); i++) {
  if (sbi->hotfix_from[i] >= sec && sbi->hotfix_from[i] < sec + n) {
   n = sbi->hotfix_from[i] - sec;
  }
 }
 return n;
}
