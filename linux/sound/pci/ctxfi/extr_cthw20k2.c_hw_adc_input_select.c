
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw {int dummy; } ;
typedef enum ADCSRC { ____Placeholder_ADCSRC } ADCSRC ;




 int GPIO_DATA ;
 int hw_read_20kx (struct hw*,int ) ;
 int hw_wm8775_input_select (struct hw*,int,int) ;
 int hw_write_20kx (struct hw*,int ,int) ;

__attribute__((used)) static int hw_adc_input_select(struct hw *hw, enum ADCSRC type)
{
 u32 data;
 data = hw_read_20kx(hw, GPIO_DATA);
 switch (type) {
 case 128:
  data |= (0x1 << 14);
  hw_write_20kx(hw, GPIO_DATA, data);
  hw_wm8775_input_select(hw, 0, 20);
  break;
 case 129:
  data &= ~(0x1 << 14);
  hw_write_20kx(hw, GPIO_DATA, data);
  hw_wm8775_input_select(hw, 1, 0);
  break;
 default:
  break;
 }

 return 0;
}
