
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned qnx6_lfile_checksum(char *name, unsigned size)
{
 unsigned crc = 0;
 char *end = name + size;
 while (name < end) {
  crc = ((crc >> 1) + *(name++)) ^
   ((crc & 0x00000001) ? 0x80000000 : 0);
 }
 return crc;
}
