
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int EIO ;
 int i2c_master_send (struct i2c_client*,unsigned int*,unsigned int) ;
 unsigned int tas5086_register_size (int *,unsigned int) ;

__attribute__((used)) static int tas5086_reg_write(void *context, unsigned int reg,
         unsigned int value)
{
 struct i2c_client *client = context;
 unsigned int i, size;
 uint8_t buf[5];
 int ret;

 size = tas5086_register_size(&client->dev, reg);
 if (size == 0)
  return -EINVAL;

 buf[0] = reg;

 for (i = size; i >= 1; --i) {
  buf[i] = value;
  value >>= 8;
 }

 ret = i2c_master_send(client, buf, size + 1);
 if (ret == size + 1)
  return 0;
 else if (ret < 0)
  return ret;
 else
  return -EIO;
}
