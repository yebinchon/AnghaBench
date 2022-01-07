
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long partial_crc32_one (int ,unsigned long) ;

__attribute__((used)) static unsigned long partial_crc32(const char *s, unsigned long crc)
{
 while (*s)
  crc = partial_crc32_one(*s++, crc);
 return crc;
}
