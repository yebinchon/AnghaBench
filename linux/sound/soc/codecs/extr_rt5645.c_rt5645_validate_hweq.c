
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short RT5645_EQ_CTRL2 ;

__attribute__((used)) static bool rt5645_validate_hweq(unsigned short reg)
{
 if ((reg >= 0x1a4 && reg <= 0x1cd) | (reg >= 0x1e5 && reg <= 0x1f8) |
  (reg == RT5645_EQ_CTRL2))
  return 1;

 return 0;
}
