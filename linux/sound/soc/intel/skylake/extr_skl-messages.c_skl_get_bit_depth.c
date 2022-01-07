
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum skl_bitdepth { ____Placeholder_skl_bitdepth } skl_bitdepth ;


 int SKL_DEPTH_16BIT ;
 int SKL_DEPTH_24BIT ;
 int SKL_DEPTH_32BIT ;
 int SKL_DEPTH_8BIT ;
 int SKL_DEPTH_INVALID ;

enum skl_bitdepth skl_get_bit_depth(int params)
{
 switch (params) {
 case 8:
  return SKL_DEPTH_8BIT;

 case 16:
  return SKL_DEPTH_16BIT;

 case 24:
  return SKL_DEPTH_24BIT;

 case 32:
  return SKL_DEPTH_32BIT;

 default:
  return SKL_DEPTH_INVALID;

 }
}
