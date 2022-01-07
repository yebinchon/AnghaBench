
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
utf8decode3(const char *str)
{
 unsigned int uc;

 uc = *str++ & 0x0F;
 uc <<= 6;
 uc |= *str++ & 0x3F;
 uc <<= 6;
 uc |= *str++ & 0x3F;

 return uc;
}
