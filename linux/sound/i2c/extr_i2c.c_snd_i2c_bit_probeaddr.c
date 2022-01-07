
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_i2c_bus {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int snd_i2c_bit_sendbyte (struct snd_i2c_bus*,unsigned short) ;
 int snd_i2c_bit_start (struct snd_i2c_bus*) ;
 int snd_i2c_bit_stop (struct snd_i2c_bus*) ;

__attribute__((used)) static int snd_i2c_bit_probeaddr(struct snd_i2c_bus *bus, unsigned short addr)
{
 int err;

 if (addr & 0x8000)
  return -EIO;
 if (addr & 0x7f80)
  return -EINVAL;
 snd_i2c_bit_start(bus);
 err = snd_i2c_bit_sendbyte(bus, addr << 1);
 snd_i2c_bit_stop(bus);
 return err;
}
