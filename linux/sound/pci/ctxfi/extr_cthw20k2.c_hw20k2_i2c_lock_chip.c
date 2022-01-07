
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;


 int I2C_IF_WLOCK ;
 scalar_t__ STATE_LOCKED ;
 scalar_t__ hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,scalar_t__) ;

__attribute__((used)) static int hw20k2_i2c_lock_chip(struct hw *hw)
{

 hw_write_20kx(hw, I2C_IF_WLOCK, STATE_LOCKED);
 hw_write_20kx(hw, I2C_IF_WLOCK, STATE_LOCKED);
 if (hw_read_20kx(hw, I2C_IF_WLOCK) == STATE_LOCKED)
  return 0;

 return -1;
}
