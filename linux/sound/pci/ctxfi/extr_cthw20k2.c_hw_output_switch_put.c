
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw {int dummy; } ;


 int GPIO_DATA ;
 int GPIO_EXT_DATA ;
 int hw_output_switch_get (struct hw*) ;
 int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,int) ;

__attribute__((used)) static int hw_output_switch_put(struct hw *hw, int position)
{
 u32 data;

 if (position == hw_output_switch_get(hw))
  return 0;


 data = hw_read_20kx(hw, GPIO_DATA);
 data |= (0x03 << 11);
 hw_write_20kx(hw, GPIO_DATA, data);

 data = hw_read_20kx(hw, GPIO_EXT_DATA) & ~0x30;
 switch (position) {
 case 0:
  break;
 case 1:
  data |= 0x10;
  break;
 default:
  data |= 0x20;
 }
 hw_write_20kx(hw, GPIO_EXT_DATA, data);


 data = hw_read_20kx(hw, GPIO_DATA);
 data &= ~(0x03 << 11);
 hw_write_20kx(hw, GPIO_DATA, data);

 return 1;
}
