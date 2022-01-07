
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int positions ;


 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned short*,int ,int) ;

__attribute__((used)) static int jffs2_rtime_decompress(unsigned char *data_in,
      unsigned char *cpage_out,
      uint32_t srclen, uint32_t destlen)
{
 unsigned short positions[256];
 int outpos = 0;
 int pos=0;

 memset(positions,0,sizeof(positions));

 while (outpos<destlen) {
  unsigned char value;
  int backoffs;
  int repeat;

  value = data_in[pos++];
  cpage_out[outpos++] = value;
  repeat = data_in[pos++];
  backoffs = positions[value];

  positions[value]=outpos;
  if (repeat) {
   if (backoffs + repeat >= outpos) {
    while(repeat) {
     cpage_out[outpos++] = cpage_out[backoffs++];
     repeat--;
    }
   } else {
    memcpy(&cpage_out[outpos],&cpage_out[backoffs],repeat);
    outpos+=repeat;
   }
  }
 }
 return 0;
}
