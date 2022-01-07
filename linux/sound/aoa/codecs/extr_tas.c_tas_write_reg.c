
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tas {int i2c; } ;


 int i2c_smbus_write_byte_data (int ,int,int) ;
 int i2c_smbus_write_i2c_block_data (int ,int,int,int*) ;

__attribute__((used)) static inline int tas_write_reg(struct tas *tas, u8 reg, u8 len, u8 *data)
{
 if (len == 1)
  return i2c_smbus_write_byte_data(tas->i2c, reg, *data);
 else
  return i2c_smbus_write_i2c_block_data(tas->i2c, reg, len, data);
}
