
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
struct i2c_msg {int len; unsigned int* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; int dev; } ;
typedef int send_buf ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EINVAL ;
 int EIO ;
 scalar_t__ I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 unsigned int tas5086_register_size (int *,unsigned int) ;

__attribute__((used)) static int tas5086_reg_read(void *context, unsigned int reg,
        unsigned int *value)
{
 struct i2c_client *client = context;
 uint8_t send_buf, recv_buf[4];
 struct i2c_msg msgs[2];
 unsigned int size;
 unsigned int i;
 int ret;

 size = tas5086_register_size(&client->dev, reg);
 if (size == 0)
  return -EINVAL;

 send_buf = reg;

 msgs[0].addr = client->addr;
 msgs[0].len = sizeof(send_buf);
 msgs[0].buf = &send_buf;
 msgs[0].flags = 0;

 msgs[1].addr = client->addr;
 msgs[1].len = size;
 msgs[1].buf = recv_buf;
 msgs[1].flags = I2C_M_RD;

 ret = i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));
 if (ret < 0)
  return ret;
 else if (ret != ARRAY_SIZE(msgs))
  return -EIO;

 *value = 0;

 for (i = 0; i < size; i++) {
  *value <<= 8;
  *value |= recv_buf[i];
 }

 return 0;
}
