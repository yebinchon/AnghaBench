
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int EINVAL ;




int verify_spi_info(u8 proto, u32 min, u32 max)
{
 switch (proto) {
 case 130:
 case 128:
  break;

 case 129:

  if (max >= 0x10000)
   return -EINVAL;
  break;

 default:
  return -EINVAL;
 }

 if (min > max)
  return -EINVAL;

 return 0;
}
