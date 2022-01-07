
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int NHLT_DEVICE_BT ;
 int NHLT_DEVICE_DMIC ;
 int NHLT_DEVICE_I2S ;
 int NHLT_DEVICE_INVALID ;




__attribute__((used)) static u8 skl_tplg_be_dev_type(int dev_type)
{
 int ret;

 switch (dev_type) {
 case 130:
  ret = NHLT_DEVICE_BT;
  break;

 case 129:
  ret = NHLT_DEVICE_DMIC;
  break;

 case 128:
  ret = NHLT_DEVICE_I2S;
  break;

 default:
  ret = NHLT_DEVICE_INVALID;
  break;
 }

 return ret;
}
