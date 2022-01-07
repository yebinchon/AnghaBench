
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;


 int I2C_ADDRESS_SLAD ;
 int I2C_IF_ADDRESS ;
 int I2C_IF_STATUS ;
 int I2C_STATUS_DCM ;
 int hw20k2_i2c_lock_chip (struct hw*) ;
 unsigned int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,unsigned int) ;
 int set_field (unsigned int*,int ,int) ;

__attribute__((used)) static int hw20k2_i2c_uninit(struct hw *hw)
{
 unsigned int i2c_status;
 unsigned int i2c_addr;

 i2c_addr = 0;
 set_field(&i2c_addr, I2C_ADDRESS_SLAD, 0x57);

 hw_write_20kx(hw, I2C_IF_ADDRESS, i2c_addr);

 i2c_status = hw_read_20kx(hw, I2C_IF_STATUS);

 set_field(&i2c_status, I2C_STATUS_DCM, 0);

 hw_write_20kx(hw, I2C_IF_STATUS, i2c_status);

 return hw20k2_i2c_lock_chip(hw);
}
