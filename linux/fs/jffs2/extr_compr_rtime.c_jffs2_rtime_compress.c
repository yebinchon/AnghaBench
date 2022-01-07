
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int positions ;


 int memset (unsigned short*,int ,int) ;

__attribute__((used)) static int jffs2_rtime_compress(unsigned char *data_in,
    unsigned char *cpage_out,
    uint32_t *sourcelen, uint32_t *dstlen)
{
 unsigned short positions[256];
 int outpos = 0;
 int pos=0;

 memset(positions,0,sizeof(positions));

 while (pos < (*sourcelen) && outpos <= (*dstlen)-2) {
  int backpos, runlen=0;
  unsigned char value;

  value = data_in[pos];

  cpage_out[outpos++] = data_in[pos++];

  backpos = positions[value];
  positions[value]=pos;

  while ((backpos < pos) && (pos < (*sourcelen)) &&
         (data_in[pos]==data_in[backpos++]) && (runlen<255)) {
   pos++;
   runlen++;
  }
  cpage_out[outpos++] = runlen;
 }

 if (outpos >= pos) {

  return -1;
 }


 *sourcelen = pos;
 *dstlen = outpos;
 return 0;
}
