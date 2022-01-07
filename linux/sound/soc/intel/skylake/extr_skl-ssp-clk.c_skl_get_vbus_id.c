
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int EINVAL ;


 int SKL_SCLKFS_OFS ;

 int SKL_SCLK_OFS ;

__attribute__((used)) static int skl_get_vbus_id(u32 index, u8 clk_type)
{
 switch (clk_type) {
 case 130:
  return index;

 case 129:
  return index - SKL_SCLK_OFS;

 case 128:
  return index - SKL_SCLKFS_OFS;

 default:
  return -EINVAL;
 }
}
