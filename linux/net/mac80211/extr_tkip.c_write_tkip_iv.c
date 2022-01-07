
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static u8 *write_tkip_iv(u8 *pos, u16 iv16)
{
 *pos++ = iv16 >> 8;
 *pos++ = ((iv16 >> 8) | 0x20) & 0x7f;
 *pos++ = iv16 & 0xFF;
 return pos;
}
