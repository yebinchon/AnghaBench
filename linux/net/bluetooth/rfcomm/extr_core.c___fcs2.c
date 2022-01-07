
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t __crc (size_t*) ;
 size_t* rfcomm_crc_table ;

__attribute__((used)) static inline u8 __fcs2(u8 *data)
{
 return 0xff - rfcomm_crc_table[__crc(data) ^ data[2]];
}
