
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long loff_t ;


 scalar_t__ DIV_ROUND_UP (unsigned int,unsigned int) ;
 long long EXT2_NDIR_BLOCKS ;
 long long MAX_LFS_FILESIZE ;

__attribute__((used)) static loff_t ext2_max_size(int bits)
{
 loff_t res = EXT2_NDIR_BLOCKS;
 int meta_blocks;
 unsigned int upper_limit;
 unsigned int ppb = 1 << (bits-2);
 upper_limit = (1LL << 32) - 1;


 upper_limit >>= (bits - 9);


 res += 1LL << (bits-2);
 res += 1LL << (2*(bits-2));
 res += 1LL << (3*(bits-2));

 if (res < upper_limit)
  goto check_lfs;

 res = upper_limit;

 upper_limit -= EXT2_NDIR_BLOCKS;

 meta_blocks = 1;
 upper_limit -= ppb;

 if (upper_limit < ppb * ppb) {
  meta_blocks += 1 + DIV_ROUND_UP(upper_limit, ppb);
  res -= meta_blocks;
  goto check_lfs;
 }
 meta_blocks += 1 + ppb;
 upper_limit -= ppb * ppb;

 meta_blocks += 1 + DIV_ROUND_UP(upper_limit, ppb) +
  DIV_ROUND_UP(upper_limit, ppb*ppb);
 res -= meta_blocks;
check_lfs:
 res <<= bits;
 if (res > MAX_LFS_FILESIZE)
  res = MAX_LFS_FILESIZE;

 return res;
}
