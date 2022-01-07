
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const UTF8_3_BITS ;
 unsigned char const UTF8_4_BITS ;
 unsigned int UTF8_V_SHIFT ;

__attribute__((used)) static unsigned int utf8decode(const char *str)
{
 const unsigned char *s = (const unsigned char*)str;
 unsigned int unichar = 0;

 if (*s < 0x80) {
  unichar = *s;
 } else if (*s < UTF8_3_BITS) {
  unichar = *s++ & 0x1F;
  unichar <<= UTF8_V_SHIFT;
  unichar |= *s & 0x3F;
 } else if (*s < UTF8_4_BITS) {
  unichar = *s++ & 0x0F;
  unichar <<= UTF8_V_SHIFT;
  unichar |= *s++ & 0x3F;
  unichar <<= UTF8_V_SHIFT;
  unichar |= *s & 0x3F;
 } else {
  unichar = *s++ & 0x0F;
  unichar <<= UTF8_V_SHIFT;
  unichar |= *s++ & 0x3F;
  unichar <<= UTF8_V_SHIFT;
  unichar |= *s++ & 0x3F;
  unichar <<= UTF8_V_SHIFT;
  unichar |= *s & 0x3F;
 }
 return unichar;
}
