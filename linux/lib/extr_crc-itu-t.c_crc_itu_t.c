
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int crc_itu_t_byte (int ,int ) ;

u16 crc_itu_t(u16 crc, const u8 *buffer, size_t len)
{
 while (len--)
  crc = crc_itu_t_byte(crc, *buffer++);
 return crc;
}
