
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
typedef int __be32 ;


 unsigned int AC_VERB_GET_AMP_GAIN_MUTE ;
 int EIO ;
 scalar_t__ I2C_M_RD ;
 int RL6347A_COEF_INDEX ;
 unsigned int RL6347A_PROC_COEF ;
 unsigned int be32_to_cpu (int) ;
 int cpu_to_be32 (unsigned int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int rl6347a_hw_write (struct i2c_client*,int ,unsigned int) ;

int rl6347a_hw_read(void *context, unsigned int reg, unsigned int *value)
{
 struct i2c_client *client = context;
 struct i2c_msg xfer[2];
 int ret;
 __be32 be_reg, buf = 0x0;
 unsigned int index, vid;


 if (reg <= 0xff) {
  rl6347a_hw_write(client, RL6347A_COEF_INDEX, reg);
  reg = RL6347A_PROC_COEF;
 }

 reg = reg | 0x80000;
 vid = (reg >> 8) & 0xfff;

 if (AC_VERB_GET_AMP_GAIN_MUTE == (vid & 0xf00)) {
  index = (reg >> 8) & 0xf;
  reg = (reg & ~0xf0f) | index;
 }
 be_reg = cpu_to_be32(reg);


 xfer[0].addr = client->addr;
 xfer[0].flags = 0;
 xfer[0].len = 4;
 xfer[0].buf = (u8 *)&be_reg;


 xfer[1].addr = client->addr;
 xfer[1].flags = I2C_M_RD;
 xfer[1].len = 4;
 xfer[1].buf = (u8 *)&buf;

 ret = i2c_transfer(client->adapter, xfer, 2);
 if (ret < 0)
  return ret;
 else if (ret != 2)
  return -EIO;

 *value = be32_to_cpu(buf);

 return 0;
}
