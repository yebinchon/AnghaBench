
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
typedef int uint32_t ;
struct i2c_client {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int i2c_master_send (struct i2c_client*,unsigned int*,size_t) ;
 int kfree (unsigned int*) ;
 unsigned int* kzalloc (size_t,int) ;
 int put_unaligned_be32 (long const,unsigned int*) ;

__attribute__((used)) static int tas571x_reg_write_multiword(struct i2c_client *client,
  unsigned int reg, const long values[], size_t len)
{
 size_t i;
 uint8_t *buf, *p;
 int ret;
 size_t send_size = 1 + len * sizeof(uint32_t);

 buf = kzalloc(send_size, GFP_KERNEL | GFP_DMA);
 if (!buf)
  return -ENOMEM;
 buf[0] = reg;

 for (i = 0, p = buf + 1; i < len; i++, p += sizeof(uint32_t))
  put_unaligned_be32(values[i], p);

 ret = i2c_master_send(client, buf, send_size);

 kfree(buf);

 if (ret == send_size)
  return 0;
 else if (ret < 0)
  return ret;
 else
  return -EIO;
}
