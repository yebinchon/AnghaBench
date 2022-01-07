
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {int dummy; } ;
struct atmel_ac97c {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int AC97C_CSR_TXRDY ;
 int COSR ;
 int COTHR ;
 int ac97c_readl (struct atmel_ac97c*,int ) ;
 int ac97c_writel (struct atmel_ac97c*,int ,unsigned long) ;
 int dev_dbg (int *,char*) ;
 struct atmel_ac97c* get_chip (struct snd_ac97*) ;
 int udelay (int) ;

__attribute__((used)) static void atmel_ac97c_write(struct snd_ac97 *ac97, unsigned short reg,
  unsigned short val)
{
 struct atmel_ac97c *chip = get_chip(ac97);
 unsigned long word;
 int timeout = 40;

 word = (reg & 0x7f) << 16 | val;

 do {
  if (ac97c_readl(chip, COSR) & AC97C_CSR_TXRDY) {
   ac97c_writel(chip, COTHR, word);
   return;
  }
  udelay(1);
 } while (--timeout);

 dev_dbg(&chip->pdev->dev, "codec write timeout\n");
}
