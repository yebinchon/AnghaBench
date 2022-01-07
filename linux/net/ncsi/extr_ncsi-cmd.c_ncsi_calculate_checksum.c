
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



u32 ncsi_calculate_checksum(unsigned char *data, int len)
{
 u32 checksum = 0;
 int i;

 for (i = 0; i < len; i += 2)
  checksum += (((u32)data[i] << 8) | data[i + 1]);

 checksum = (~checksum + 1);
 return checksum;
}
