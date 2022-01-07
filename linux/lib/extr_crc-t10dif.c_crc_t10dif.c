
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int crc_t10dif_update (int ,unsigned char const*,size_t) ;

__u16 crc_t10dif(const unsigned char *buffer, size_t len)
{
 return crc_t10dif_update(0, buffer, len);
}
