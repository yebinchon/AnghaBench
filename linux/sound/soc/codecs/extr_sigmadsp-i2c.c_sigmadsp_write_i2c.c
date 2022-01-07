
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int i2c_master_send (void*,int *,size_t) ;
 int kfree (int *) ;
 int * kzalloc (int,int) ;
 int memcpy (int *,int const*,size_t) ;
 int put_unaligned_be16 (unsigned int,int *) ;

__attribute__((used)) static int sigmadsp_write_i2c(void *control_data,
 unsigned int addr, const uint8_t data[], size_t len)
{
 uint8_t *buf;
 int ret;

 buf = kzalloc(2 + len, GFP_KERNEL | GFP_DMA);
 if (!buf)
  return -ENOMEM;

 put_unaligned_be16(addr, buf);
 memcpy(buf + 2, data, len);

 ret = i2c_master_send(control_data, buf, len + 2);

 kfree(buf);

 if (ret < 0)
  return ret;

 return 0;
}
