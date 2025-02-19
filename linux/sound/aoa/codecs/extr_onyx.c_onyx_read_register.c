
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct onyx {scalar_t__* cache; int i2c; } ;
typedef scalar_t__ s32 ;


 scalar_t__ FIRSTREGISTER ;
 scalar_t__ ONYX_REG_CONTROL ;
 scalar_t__ i2c_smbus_read_byte_data (int ,scalar_t__) ;

__attribute__((used)) static int onyx_read_register(struct onyx *onyx, u8 reg, u8 *value)
{
 s32 v;

 if (reg != ONYX_REG_CONTROL) {
  *value = onyx->cache[reg-FIRSTREGISTER];
  return 0;
 }
 v = i2c_smbus_read_byte_data(onyx->i2c, reg);
 if (v < 0) {
  *value = 0;
  return -1;
 }
 *value = (u8)v;
 onyx->cache[ONYX_REG_CONTROL-FIRSTREGISTER] = *value;
 return 0;
}
