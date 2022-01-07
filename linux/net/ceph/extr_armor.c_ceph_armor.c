
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* encode_bits (unsigned char) ;

int ceph_armor(char *dst, const char *src, const char *end)
{
 int olen = 0;
 int line = 0;

 while (src < end) {
  unsigned char a, b, c;

  a = *src++;
  *dst++ = encode_bits(a >> 2);
  if (src < end) {
   b = *src++;
   *dst++ = encode_bits(((a & 3) << 4) | (b >> 4));
   if (src < end) {
    c = *src++;
    *dst++ = encode_bits(((b & 15) << 2) |
           (c >> 6));
    *dst++ = encode_bits(c & 63);
   } else {
    *dst++ = encode_bits((b & 15) << 2);
    *dst++ = '=';
   }
  } else {
   *dst++ = encode_bits(((a & 3) << 4));
   *dst++ = '=';
   *dst++ = '=';
  }
  olen += 4;
  line += 4;
  if (line == 64) {
   line = 0;
   *(dst++) = '\n';
   olen++;
  }
 }
 return olen;
}
