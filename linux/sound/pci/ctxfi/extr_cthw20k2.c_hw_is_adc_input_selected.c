
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw {scalar_t__ model; } ;
typedef enum ADCSRC { ____Placeholder_ADCSRC } ADCSRC ;




 scalar_t__ CTSB1270 ;
 int GPIO_DATA ;
 int hw_read_20kx (struct hw*,int ) ;

__attribute__((used)) static int hw_is_adc_input_selected(struct hw *hw, enum ADCSRC type)
{
 u32 data;
 if (hw->model == CTSB1270) {


  return 1;
 }
 data = hw_read_20kx(hw, GPIO_DATA);
 switch (type) {
 case 128:
  data = (data & (0x1 << 14)) ? 1 : 0;
  break;
 case 129:
  data = (data & (0x1 << 14)) ? 0 : 1;
  break;
 default:
  data = 0;
 }
 return data;
}
