
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rubin_state {int pp; } ;


 int end_rubin (struct rubin_state*) ;
 int init_pushpull (int *,unsigned char*,int,int ,int) ;
 int init_rubin (struct rubin_state*,int,int*) ;
 int out_byte (struct rubin_state*,unsigned char) ;
 int pushedbits (int *) ;

__attribute__((used)) static int rubin_do_compress(int bit_divider, int *bits, unsigned char *data_in,
        unsigned char *cpage_out, uint32_t *sourcelen,
        uint32_t *dstlen)
 {
 int outpos = 0;
 int pos=0;
 struct rubin_state rs;

 init_pushpull(&rs.pp, cpage_out, *dstlen * 8, 0, 32);

 init_rubin(&rs, bit_divider, bits);

 while (pos < (*sourcelen) && !out_byte(&rs, data_in[pos]))
  pos++;

 end_rubin(&rs);

 if (outpos > pos) {

  return -1;
 }




 outpos = (pushedbits(&rs.pp)+7)/8;

 if (outpos >= pos)
  return -1;
 *sourcelen = pos;
 *dstlen = outpos;
 return 0;
}
