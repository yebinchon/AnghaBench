
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw {int dummy; } ;


 unsigned int hw_read_pci (struct hw*,int) ;
 int hw_write_pci (struct hw*,int,int) ;

__attribute__((used)) static void i2c_write(struct hw *hw, u32 device, u32 addr, u32 data)
{
 unsigned int ret;

 do {
  ret = hw_read_pci(hw, 0xEC);
 } while (!(ret & 0x800000));
 hw_write_pci(hw, 0xE0, device);
 hw_write_pci(hw, 0xE4, (data << 8) | (addr & 0xff));
}
