
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_i2c_bus {int dummy; } ;


 int ENOENT ;

__attribute__((used)) static int ap_cs8427_probeaddr(struct snd_i2c_bus *bus, unsigned short addr)
{
 if (addr == 0x10)
  return 1;
 return -ENOENT;
}
