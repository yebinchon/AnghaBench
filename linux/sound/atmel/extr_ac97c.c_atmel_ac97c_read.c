
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {int dummy; } ;
struct atmel_ac97c {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 unsigned short AC97C_CSR_RXRDY ;
 unsigned short AC97C_CSR_TXRDY ;
 int CORHR ;
 int COSR ;
 int COTHR ;
 unsigned short ac97c_readl (struct atmel_ac97c*,int ) ;
 int ac97c_writel (struct atmel_ac97c*,int ,unsigned long) ;
 int dev_dbg (int *,char*) ;
 struct atmel_ac97c* get_chip (struct snd_ac97*) ;
 int udelay (int) ;

__attribute__((used)) static unsigned short atmel_ac97c_read(struct snd_ac97 *ac97,
  unsigned short reg)
{
 struct atmel_ac97c *chip = get_chip(ac97);
 unsigned long word;
 int timeout = 40;
 int write = 10;

 word = (0x80 | (reg & 0x7f)) << 16;

 if ((ac97c_readl(chip, COSR) & AC97C_CSR_RXRDY) != 0)
  ac97c_readl(chip, CORHR);

retry_write:
 timeout = 40;

 do {
  if ((ac97c_readl(chip, COSR) & AC97C_CSR_TXRDY) != 0) {
   ac97c_writel(chip, COTHR, word);
   goto read_reg;
  }
  udelay(10);
 } while (--timeout);

 if (!--write)
  goto timed_out;
 goto retry_write;

read_reg:
 do {
  if ((ac97c_readl(chip, COSR) & AC97C_CSR_RXRDY) != 0) {
   unsigned short val = ac97c_readl(chip, CORHR);
   return val;
  }
  udelay(10);
 } while (--timeout);

 if (!--write)
  goto timed_out;
 goto retry_write;

timed_out:
 dev_dbg(&chip->pdev->dev, "codec read timeout\n");
 return 0xffff;
}
