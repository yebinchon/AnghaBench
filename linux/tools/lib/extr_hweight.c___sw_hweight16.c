
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int __sw_hweight16(unsigned int w)
{
 unsigned int res = w - ((w >> 1) & 0x5555);
 res = (res & 0x3333) + ((res >> 2) & 0x3333);
 res = (res + (res >> 4)) & 0x0F0F;
 return (res + (res >> 8)) & 0x00FF;
}
