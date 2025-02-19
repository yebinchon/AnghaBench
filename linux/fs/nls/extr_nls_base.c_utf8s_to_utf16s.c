
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int unicode_t ;
typedef int u8 ;
typedef int u16 ;
typedef enum utf16_endian { ____Placeholder_utf16_endian } utf16_endian ;


 int EINVAL ;
 int PLANE_SIZE ;
 int SURROGATE_BITS ;
 int SURROGATE_LOW ;
 int SURROGATE_PAIR ;
 int put_utf16 (int ,int,int) ;
 int utf8_to_utf32 (int const*,int,int*) ;

int utf8s_to_utf16s(const u8 *s, int inlen, enum utf16_endian endian,
  wchar_t *pwcs, int maxout)
{
 u16 *op;
 int size;
 unicode_t u;

 op = pwcs;
 while (inlen > 0 && maxout > 0 && *s) {
  if (*s & 0x80) {
   size = utf8_to_utf32(s, inlen, &u);
   if (size < 0)
    return -EINVAL;
   s += size;
   inlen -= size;

   if (u >= PLANE_SIZE) {
    if (maxout < 2)
     break;
    u -= PLANE_SIZE;
    put_utf16(op++, SURROGATE_PAIR |
      ((u >> 10) & SURROGATE_BITS),
      endian);
    put_utf16(op++, SURROGATE_PAIR |
      SURROGATE_LOW |
      (u & SURROGATE_BITS),
      endian);
    maxout -= 2;
   } else {
    put_utf16(op++, u, endian);
    maxout--;
   }
  } else {
   put_utf16(op++, *s++, endian);
   inlen--;
   maxout--;
  }
 }
 return op - pwcs;
}
