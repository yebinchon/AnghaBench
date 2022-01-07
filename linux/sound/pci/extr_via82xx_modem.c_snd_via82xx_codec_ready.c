
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via82xx_modem {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 unsigned int VIA_REG_AC97_BUSY ;
 int dev_err (int ,char*,int,unsigned int) ;
 unsigned int snd_via82xx_codec_xread (struct via82xx_modem*) ;
 int udelay (int) ;

__attribute__((used)) static int snd_via82xx_codec_ready(struct via82xx_modem *chip, int secondary)
{
 unsigned int timeout = 1000;
 unsigned int val;

 while (timeout-- > 0) {
  udelay(1);
  if (!((val = snd_via82xx_codec_xread(chip)) & VIA_REG_AC97_BUSY))
   return val & 0xffff;
 }
 dev_err(chip->card->dev, "codec_ready: codec %i is not ready [0x%x]\n",
     secondary, snd_via82xx_codec_xread(chip));
 return -EIO;
}
