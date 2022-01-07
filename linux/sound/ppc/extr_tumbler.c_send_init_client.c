
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_keywest {int client; } ;


 int DBG (char*,int) ;
 int ENXIO ;
 int i2c_smbus_write_byte_data (int ,unsigned int,unsigned int) ;
 int mdelay (int) ;

__attribute__((used)) static int send_init_client(struct pmac_keywest *i2c, unsigned int *regs)
{
 while (*regs > 0) {
  int err, count = 10;
  do {
   err = i2c_smbus_write_byte_data(i2c->client,
       regs[0], regs[1]);
   if (err >= 0)
    break;
   DBG("(W) i2c error %d\n", err);
   mdelay(10);
  } while (count--);
  if (err < 0)
   return -ENXIO;
  regs += 2;
 }
 return 0;
}
