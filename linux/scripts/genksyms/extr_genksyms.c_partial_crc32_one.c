
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* crctab32 ;

__attribute__((used)) static unsigned long partial_crc32_one(unsigned char c, unsigned long crc)
{
 return crctab32[(crc ^ c) & 0xff] ^ (crc >> 8);
}
