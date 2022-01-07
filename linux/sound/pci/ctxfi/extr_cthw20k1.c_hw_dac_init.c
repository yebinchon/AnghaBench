
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hw {scalar_t__ model; } ;
struct dac_conf {int msr; } ;


 scalar_t__ CTSB055X ;
 int GPIO ;
 scalar_t__ hw_read_20kx (struct hw*,int ) ;
 unsigned int hw_read_pci (struct hw*,int) ;
 int hw_reset_dac (struct hw*) ;
 int hw_write_20kx (struct hw*,int ,int) ;
 int hw_write_pci (struct hw*,int,int) ;
 int i2c_lock (struct hw*) ;
 scalar_t__ i2c_unlock (struct hw*) ;
 int i2c_write (struct hw*,int,int,int) ;

__attribute__((used)) static int hw_dac_init(struct hw *hw, const struct dac_conf *info)
{
 u32 data;
 u16 gpioorg;
 unsigned int ret;

 if (hw->model == CTSB055X) {

  gpioorg = (u16)hw_read_20kx(hw, GPIO);
  gpioorg &= 0xffbf;
  gpioorg |= 2;
  hw_write_20kx(hw, GPIO, gpioorg);
  return 0;
 }


 gpioorg = (u16)hw_read_20kx(hw, GPIO);
 gpioorg &= 0xffbf;
 hw_write_20kx(hw, GPIO, gpioorg);

 hw_reset_dac(hw);

 if (i2c_unlock(hw))
  return -1;

 hw_write_pci(hw, 0xEC, 0x05);
 do {
  ret = hw_read_pci(hw, 0xEC);
 } while (!(ret & 0x800000));

 switch (info->msr) {
 case 1:
  data = 0x24;
  break;
 case 2:
  data = 0x25;
  break;
 case 4:
  data = 0x26;
  break;
 default:
  data = 0x24;
  break;
 }

 i2c_write(hw, 0x00180080, 0x06, data);
 i2c_write(hw, 0x00180080, 0x09, data);
 i2c_write(hw, 0x00180080, 0x0c, data);
 i2c_write(hw, 0x00180080, 0x0f, data);

 i2c_lock(hw);


 gpioorg = (u16)hw_read_20kx(hw, GPIO);
 gpioorg = gpioorg | 0x40;
 hw_write_20kx(hw, GPIO, gpioorg);

 return 0;
}
