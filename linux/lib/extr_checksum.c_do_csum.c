
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int from32to16 (unsigned int) ;

__attribute__((used)) static unsigned int do_csum(const unsigned char *buff, int len)
{
 int odd;
 unsigned int result = 0;

 if (len <= 0)
  goto out;
 odd = 1 & (unsigned long) buff;
 if (odd) {



  result = *buff;

  len--;
  buff++;
 }
 if (len >= 2) {
  if (2 & (unsigned long) buff) {
   result += *(unsigned short *) buff;
   len -= 2;
   buff += 2;
  }
  if (len >= 4) {
   const unsigned char *end = buff + ((unsigned)len & ~3);
   unsigned int carry = 0;
   do {
    unsigned int w = *(unsigned int *) buff;
    buff += 4;
    result += carry;
    result += w;
    carry = (w > result);
   } while (buff < end);
   result += carry;
   result = (result & 0xffff) + (result >> 16);
  }
  if (len & 2) {
   result += *(unsigned short *) buff;
   buff += 2;
  }
 }
 if (len & 1)



  result += (*buff << 8);

 result = from32to16(result);
 if (odd)
  result = ((result >> 8) & 0xff) | ((result & 0xff) << 8);
out:
 return result;
}
