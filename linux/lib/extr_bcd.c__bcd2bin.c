
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned _bcd2bin(unsigned char val)
{
 return (val & 0x0f) + (val >> 4) * 10;
}
