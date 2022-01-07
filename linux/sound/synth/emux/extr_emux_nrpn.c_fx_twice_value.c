
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int fx_twice_value(int val)
{
 return (unsigned short)((val * 2) & 0xff);
}
