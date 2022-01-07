
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef unsigned int u16 ;
struct hw20k2 {int addr_size; } ;
struct hw {int dummy; } ;


 int I2C_IF_RDATA ;
 int I2C_IF_STATUS ;
 int I2C_IF_WDATA ;
 int I2C_STATUS_BC ;
 int hw20k2_i2c_wait_data_ready (struct hw*) ;
 void* hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,unsigned int) ;
 int set_field (unsigned int*,int ,int) ;

__attribute__((used)) static int hw20k2_i2c_read(struct hw *hw, u16 addr, u32 *datap)
{
 struct hw20k2 *hw20k2 = (struct hw20k2 *)hw;
 unsigned int i2c_status;

 i2c_status = hw_read_20kx(hw, I2C_IF_STATUS);
 set_field(&i2c_status, I2C_STATUS_BC,
    (4 == hw20k2->addr_size) ? 0 : hw20k2->addr_size);
 hw_write_20kx(hw, I2C_IF_STATUS, i2c_status);
 if (!hw20k2_i2c_wait_data_ready(hw))
  return -1;

 hw_write_20kx(hw, I2C_IF_WDATA, addr);
 if (!hw20k2_i2c_wait_data_ready(hw))
  return -1;


 hw_write_20kx(hw, I2C_IF_RDATA, 0);
 if (!hw20k2_i2c_wait_data_ready(hw))
  return -1;

 *datap = hw_read_20kx(hw, I2C_IF_RDATA);

 return 0;
}
