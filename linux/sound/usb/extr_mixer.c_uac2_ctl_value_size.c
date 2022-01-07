
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int uac2_ctl_value_size(int val_type)
{
 switch (val_type) {
 case 130:
 case 128:
  return 4;
 case 131:
 case 129:
  return 2;
 default:
  return 1;
 }
 return 0;
}
