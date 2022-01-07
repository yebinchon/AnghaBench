
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw {int dummy; } ;
typedef enum ADCSRC { ____Placeholder_ADCSRC } ADCSRC ;




 int GPIO ;
 int hw_read_20kx (struct hw*,int ) ;
 unsigned int hw_read_pci (struct hw*,int) ;
 int hw_write_20kx (struct hw*,int ,int) ;
 int hw_write_pci (struct hw*,int,int) ;
 int i2c_lock (struct hw*) ;
 scalar_t__ i2c_unlock (struct hw*) ;
 int i2c_write (struct hw*,int,int,int) ;

__attribute__((used)) static int
adc_input_select_hendrix(struct hw *hw, enum ADCSRC type, unsigned char boost)
{
 u32 data;
 u32 i2c_data;
 unsigned int ret;

 if (i2c_unlock(hw))
  return -1;

 do {
  ret = hw_read_pci(hw, 0xEC);
 } while (!(ret & 0x800000));

 hw_write_pci(hw, 0xEC, 0x05);

 data = hw_read_20kx(hw, GPIO);
 switch (type) {
 case 128:
  data |= (0x1 << 7);
  i2c_data = 0x1;
  break;
 case 129:
  data &= ~(0x1 << 7);
  i2c_data = 0x2;
  break;
 default:
  i2c_lock(hw);
  return -1;
 }
 hw_write_20kx(hw, GPIO, data);
 i2c_write(hw, 0x001a0080, 0x2a, i2c_data);
 if (boost) {
  i2c_write(hw, 0x001a0080, 0x1c, 0xe7);
  i2c_write(hw, 0x001a0080, 0x1e, 0xe7);
 } else {
  i2c_write(hw, 0x001a0080, 0x1c, 0xcf);
  i2c_write(hw, 0x001a0080, 0x1e, 0xcf);
 }

 i2c_lock(hw);

 return 0;
}
