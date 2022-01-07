
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hw {int dummy; } ;


 int GPIO ;
 scalar_t__ hw_read_20kx (struct hw*,int ) ;
 unsigned int hw_read_pci (struct hw*,int) ;
 int hw_write_20kx (struct hw*,int ,int) ;
 int hw_write_pci (struct hw*,int,int) ;
 int i2c_lock (struct hw*) ;
 scalar_t__ i2c_unlock (struct hw*) ;
 int i2c_write (struct hw*,int,int,int) ;
 int mdelay (int) ;
 int msleep (int) ;

__attribute__((used)) static int hw_reset_dac(struct hw *hw)
{
 u32 i;
 u16 gpioorg;
 unsigned int ret;

 if (i2c_unlock(hw))
  return -1;

 do {
  ret = hw_read_pci(hw, 0xEC);
 } while (!(ret & 0x800000));
 hw_write_pci(hw, 0xEC, 0x05);


 for (i = 0; i < 2; i++) {

  msleep(100);
  gpioorg = (u16)hw_read_20kx(hw, GPIO);
  gpioorg &= 0xfffd;
  hw_write_20kx(hw, GPIO, gpioorg);
  mdelay(1);
  hw_write_20kx(hw, GPIO, gpioorg | 0x2);
 }

 i2c_write(hw, 0x00180080, 0x01, 0x80);
 i2c_write(hw, 0x00180080, 0x02, 0x10);

 i2c_lock(hw);

 return 0;
}
