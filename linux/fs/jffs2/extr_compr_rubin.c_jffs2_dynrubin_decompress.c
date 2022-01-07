
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int rubin_do_decompress (int,int*,unsigned char*,unsigned char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int jffs2_dynrubin_decompress(unsigned char *data_in,
         unsigned char *cpage_out,
         uint32_t sourcelen, uint32_t dstlen)
{
 int bits[8];
 int c;

 for (c=0; c<8; c++)
  bits[c] = data_in[c];

 rubin_do_decompress(256, bits, data_in+8, cpage_out, sourcelen-8,
       dstlen);
 return 0;
}
