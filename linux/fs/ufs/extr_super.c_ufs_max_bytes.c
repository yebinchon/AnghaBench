
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ufs_sb_private_info {int s_apbshift; int s_bshift; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;


 int MAX_LFS_FILESIZE ;
 long long UFS_NDADDR ;
 TYPE_1__* UFS_SB (struct super_block*) ;

__attribute__((used)) static u64 ufs_max_bytes(struct super_block *sb)
{
 struct ufs_sb_private_info *uspi = UFS_SB(sb)->s_uspi;
 int bits = uspi->s_apbshift;
 u64 res;

 if (bits > 21)
  res = ~0ULL;
 else
  res = UFS_NDADDR + (1LL << bits) + (1LL << (2*bits)) +
   (1LL << (3*bits));

 if (res >= (MAX_LFS_FILESIZE >> uspi->s_bshift))
  return MAX_LFS_FILESIZE;
 return res << uspi->s_bshift;
}
