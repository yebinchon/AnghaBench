
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int chip_type; } ;
typedef enum DAIOTYP { ____Placeholder_DAIOTYP } DAIOTYP ;




 unsigned int EINVAL ;
__attribute__((used)) static unsigned int daio_device_index(enum DAIOTYP type, struct hw *hw)
{
 switch (hw->chip_type) {
 case 138:
  switch (type) {
  case 128: return 0;
  case 129: return 0;
  case 130: return 1;
  case 135: return 4;
  case 134: return 7;
  case 133: return 5;
  case 132: return 6;
  case 136: return 7;
  default: return -EINVAL;
  }
 case 137:
  switch (type) {
  case 128: return 0;
  case 129: return 0;
  case 135: return 4;
  case 134: return 7;
  case 133: return 5;
  case 132: return 6;
  case 136: return 4;
  case 131: return 5;
  default: return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
