
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uda134x_platform_data {int l3; } ;


 int EIO ;




 int UDA134X_DATA0_ADDR ;

 int UDA134X_DATA1_ADDR ;
 unsigned int UDA134X_EXTADDR_PREFIX ;
 unsigned int UDA134X_EXTDATA_PREFIX ;


 int UDA134X_STATUS_ADDR ;
 int l3_write (int *,int,int*,int) ;

__attribute__((used)) static int uda134x_regmap_write(void *context, unsigned int reg,
 unsigned int value)
{
 struct uda134x_platform_data *pd = context;
 int ret;
 u8 addr;
 u8 data = value;

 switch (reg) {
 case 129:
 case 128:
  addr = UDA134X_STATUS_ADDR;
  data |= (reg - 129) << 7;
  break;
 case 134:
 case 133:
 case 132:
 case 131:
  addr = UDA134X_DATA0_ADDR;
  data |= (reg - 134) << 6;
  break;
 case 130:
  addr = UDA134X_DATA1_ADDR;
  break;
 default:

  addr = (reg | UDA134X_EXTADDR_PREFIX);

  ret = l3_write(&pd->l3,
          UDA134X_DATA0_ADDR, &addr, 1);
  if (ret != 1)
   return -EIO;

  addr = UDA134X_DATA0_ADDR;
  data = (value | UDA134X_EXTDATA_PREFIX);
  break;
 }

 ret = l3_write(&pd->l3,
         addr, &data, 1);
 if (ret != 1)
  return -EIO;

 return 0;
}
