
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char hex_char(unsigned char val)
{
 if (val < 10)
  return val + '0';
 if (val < 16)
  return val - 10 + 'a';
 return '?';
}
