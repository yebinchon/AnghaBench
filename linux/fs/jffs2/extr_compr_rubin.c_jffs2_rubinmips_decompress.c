
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BIT_DIVIDER_MIPS ;
 int bits_mips ;
 int rubin_do_decompress (int ,int ,unsigned char*,unsigned char*,int ,int ) ;

__attribute__((used)) static int jffs2_rubinmips_decompress(unsigned char *data_in,
          unsigned char *cpage_out,
          uint32_t sourcelen, uint32_t dstlen)
{
 rubin_do_decompress(BIT_DIVIDER_MIPS, bits_mips, data_in,
       cpage_out, sourcelen, dstlen);
 return 0;
}
