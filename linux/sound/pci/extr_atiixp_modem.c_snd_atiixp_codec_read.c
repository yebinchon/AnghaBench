
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atiixp_modem {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int ATI_REG_PHYS_IN_DATA_SHIFT ;
 unsigned int ATI_REG_PHYS_IN_READ_FLAG ;
 unsigned short ATI_REG_PHYS_OUT_ADDR_EN ;
 unsigned short ATI_REG_PHYS_OUT_ADDR_SHIFT ;
 unsigned short ATI_REG_PHYS_OUT_RW ;
 int PHYS_IN_ADDR ;
 int PHYS_OUT_ADDR ;
 unsigned int atiixp_read (struct atiixp_modem*,int ) ;
 int atiixp_write (struct atiixp_modem*,int ,unsigned int) ;
 int dev_warn (int ,char*,unsigned short) ;
 scalar_t__ snd_atiixp_acquire_codec (struct atiixp_modem*) ;
 int udelay (int) ;

__attribute__((used)) static unsigned short snd_atiixp_codec_read(struct atiixp_modem *chip,
         unsigned short codec,
         unsigned short reg)
{
 unsigned int data;
 int timeout;

 if (snd_atiixp_acquire_codec(chip) < 0)
  return 0xffff;
 data = (reg << ATI_REG_PHYS_OUT_ADDR_SHIFT) |
  ATI_REG_PHYS_OUT_ADDR_EN |
  ATI_REG_PHYS_OUT_RW |
  codec;
 atiixp_write(chip, PHYS_OUT_ADDR, data);
 if (snd_atiixp_acquire_codec(chip) < 0)
  return 0xffff;
 timeout = 1000;
 do {
  data = atiixp_read(chip, PHYS_IN_ADDR);
  if (data & ATI_REG_PHYS_IN_READ_FLAG)
   return data >> ATI_REG_PHYS_IN_DATA_SHIFT;
  udelay(1);
 } while (--timeout);

 if (reg < 0x7c)
  dev_warn(chip->card->dev, "codec read timeout (reg %x)\n", reg);
 return 0xffff;
}
