
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hw {int dummy; } ;







 int GPIO ;
 int ID0 ;
 int hw_read_20kx (struct hw*,int ) ;
 unsigned int hw_read_pci (struct hw*,int) ;
 int hw_write_20kx (struct hw*,int ,int) ;
 int hw_write_pci (struct hw*,int,int) ;
 int i2c_lock (struct hw*) ;
 scalar_t__ i2c_unlock (struct hw*) ;
 int i2c_write (struct hw*,int,int,int) ;

__attribute__((used)) static int adc_init_SBx(struct hw *hw, int input, int mic20db)
{
 u16 gpioorg;
 u16 input_source;
 u32 adcdata;
 unsigned int ret;

 input_source = 0x100;
 switch (input) {
 case 130:
  adcdata = 0x1;
  input_source = 0x180;
  break;
 case 131:
  adcdata = 0x2;
  break;
 case 128:
  adcdata = 0x4;
  break;
 case 132:
  adcdata = 0x8;
  break;
 case 129:
  adcdata = 0x0;
  input_source = 0x0;
  break;
 default:
  adcdata = 0x0;
  break;
 }

 if (i2c_unlock(hw))
  return -1;

 do {
  ret = hw_read_pci(hw, 0xEC);
 } while (!(ret & 0x800000));
 hw_write_pci(hw, 0xEC, 0x05);

 i2c_write(hw, 0x001a0080, 0x0e, 0x08);
 i2c_write(hw, 0x001a0080, 0x18, 0x0a);
 i2c_write(hw, 0x001a0080, 0x28, 0x86);
 i2c_write(hw, 0x001a0080, 0x2a, adcdata);

 if (mic20db) {
  i2c_write(hw, 0x001a0080, 0x1c, 0xf7);
  i2c_write(hw, 0x001a0080, 0x1e, 0xf7);
 } else {
  i2c_write(hw, 0x001a0080, 0x1c, 0xcf);
  i2c_write(hw, 0x001a0080, 0x1e, 0xcf);
 }

 if (!(hw_read_20kx(hw, ID0) & 0x100))
  i2c_write(hw, 0x001a0080, 0x16, 0x26);

 i2c_lock(hw);

 gpioorg = (u16)hw_read_20kx(hw, GPIO);
 gpioorg &= 0xfe7f;
 gpioorg |= input_source;
 hw_write_20kx(hw, GPIO, gpioorg);

 return 0;
}
