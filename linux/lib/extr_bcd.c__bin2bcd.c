
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned char _bin2bcd(unsigned val)
{
 return ((val / 10) << 4) + val % 10;
}
