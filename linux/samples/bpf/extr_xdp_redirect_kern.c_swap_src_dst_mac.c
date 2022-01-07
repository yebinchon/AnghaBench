
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void swap_src_dst_mac(void *data)
{
 unsigned short *p = data;
 unsigned short dst[3];

 dst[0] = p[0];
 dst[1] = p[1];
 dst[2] = p[2];
 p[0] = p[3];
 p[1] = p[4];
 p[2] = p[5];
 p[3] = dst[0];
 p[4] = dst[1];
 p[5] = dst[2];
}
