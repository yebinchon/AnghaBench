
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_sb_private_info {unsigned int s_fpb; } ;
struct super_block {int dummy; } ;
typedef int __fs32 ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;


 TYPE_1__* UFS_SB (struct super_block*) ;
 int fs32_add (struct super_block*,int *,int) ;

__attribute__((used)) static inline void ufs_fragacct (struct super_block * sb, unsigned blockmap,
 __fs32 * fraglist, int cnt)
{
 struct ufs_sb_private_info * uspi;
 unsigned fragsize, pos;

 uspi = UFS_SB(sb)->s_uspi;

 fragsize = 0;
 for (pos = 0; pos < uspi->s_fpb; pos++) {
  if (blockmap & (1 << pos)) {
   fragsize++;
  }
  else if (fragsize > 0) {
   fs32_add(sb, &fraglist[fragsize], cnt);
   fragsize = 0;
  }
 }
 if (fragsize > 0 && fragsize < uspi->s_fpb)
  fs32_add(sb, &fraglist[fragsize], cnt);
}
