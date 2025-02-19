
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hw20k2 {int addr_size; int data_size; int dev_id; } ;
struct hw {int dummy; } ;


 int I2C_ADDRESS_SLAD ;
 int I2C_IF_ADDRESS ;
 int I2C_IF_STATUS ;
 int I2C_STATUS_DCM ;
 int hw20k2_i2c_unlock_full_access (struct hw*) ;
 unsigned int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,unsigned int) ;
 int set_field (unsigned int*,int ,int) ;

__attribute__((used)) static int hw20k2_i2c_init(struct hw *hw, u8 dev_id, u8 addr_size, u8 data_size)
{
 struct hw20k2 *hw20k2 = (struct hw20k2 *)hw;
 int err;
 unsigned int i2c_status;
 unsigned int i2c_addr;

 err = hw20k2_i2c_unlock_full_access(hw);
 if (err < 0)
  return err;

 hw20k2->addr_size = addr_size;
 hw20k2->data_size = data_size;
 hw20k2->dev_id = dev_id;

 i2c_addr = 0;
 set_field(&i2c_addr, I2C_ADDRESS_SLAD, dev_id);

 hw_write_20kx(hw, I2C_IF_ADDRESS, i2c_addr);

 i2c_status = hw_read_20kx(hw, I2C_IF_STATUS);

 set_field(&i2c_status, I2C_STATUS_DCM, 1);

 hw_write_20kx(hw, I2C_IF_STATUS, i2c_status);

 return 0;
}
