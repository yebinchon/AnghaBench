
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool llc_shdlc_x_lteq_y_lt_z(int x, int y, int z)
{
 if (x <= z)
  return ((x <= y) && (y < z)) ? 1 : 0;
 else
  return ((y >= x) || (y < z)) ? 1 : 0;
}
