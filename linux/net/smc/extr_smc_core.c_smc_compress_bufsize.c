
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int SMC_BUF_MIN_SIZE ;
 scalar_t__ SMC_RMBE_SIZES ;
 scalar_t__ ilog2 (int) ;

__attribute__((used)) static u8 smc_compress_bufsize(int size)
{
 u8 compressed;

 if (size <= SMC_BUF_MIN_SIZE)
  return 0;

 size = (size - 1) >> 14;
 compressed = ilog2(size) + 1;
 if (compressed >= SMC_RMBE_SIZES)
  compressed = SMC_RMBE_SIZES - 1;
 return compressed;
}
