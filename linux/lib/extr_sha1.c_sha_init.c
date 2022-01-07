
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



void sha_init(__u32 *buf)
{
 buf[0] = 0x67452301;
 buf[1] = 0xefcdab89;
 buf[2] = 0x98badcfe;
 buf[3] = 0x10325476;
 buf[4] = 0xc3d2e1f0;
}
