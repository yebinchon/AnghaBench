
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw {int dummy; } ;


 int GPIO_EXT_DATA ;
 int hw_read_20kx (struct hw*,int ) ;

__attribute__((used)) static int hw_output_switch_get(struct hw *hw)
{
 u32 data = hw_read_20kx(hw, GPIO_EXT_DATA);

 switch (data & 0x30) {
 case 0x00:
      return 0;
 case 0x10:
      return 1;
 case 0x20:
      return 2;
 default:
      return 3;
 }
}
