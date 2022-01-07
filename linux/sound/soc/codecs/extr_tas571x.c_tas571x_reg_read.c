
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
struct tas571x_private {int dummy; } ;
struct i2c_msg {int len; unsigned int* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
typedef int send_buf ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 scalar_t__ I2C_M_RD ;
 struct tas571x_private* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 unsigned int tas571x_register_size (struct tas571x_private*,unsigned int) ;

__attribute__((used)) static int tas571x_reg_read(void *context, unsigned int reg,
       unsigned int *value)
{
 struct i2c_client *client = context;
 struct tas571x_private *priv = i2c_get_clientdata(client);
 uint8_t send_buf, recv_buf[4];
 struct i2c_msg msgs[2];
 unsigned int size;
 unsigned int i;
 int ret;

 size = tas571x_register_size(priv, reg);
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
