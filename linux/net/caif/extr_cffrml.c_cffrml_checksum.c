
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int crc_ccitt (int ,void*,int ) ;

__attribute__((used)) static u16 cffrml_checksum(u16 chks, void *buf, u16 len)
{



 return crc_ccitt(chks, buf, len);
}
