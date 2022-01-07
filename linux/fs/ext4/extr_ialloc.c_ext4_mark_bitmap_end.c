
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ext4_debug (char*,int,int) ;
 int ext4_set_bit (int,char*) ;
 int memset (char*,int,int) ;

void ext4_mark_bitmap_end(int start_bit, int end_bit, char *bitmap)
{
 int i;

 if (start_bit >= end_bit)
  return;

 ext4_debug("mark end bits +%d through +%d used\n", start_bit, end_bit);
 for (i = start_bit; i < ((start_bit + 7) & ~7UL); i++)
  ext4_set_bit(i, bitmap);
 if (i < end_bit)
  memset(bitmap + (i >> 3), 0xff, (end_bit - i) >> 3);
}
