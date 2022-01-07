
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_es1688 {int port; } ;


 int DATA_AVAIL ;
 int ENODEV ;
 int ES1688P (struct snd_es1688*,int ) ;
 int READ ;
 int RESET ;
 int inb (int ) ;
 int outb (int,int ) ;
 int snd_es1688_dsp_command (struct snd_es1688*,int) ;
 int snd_printd (char*,int ) ;
 int udelay (int) ;

int snd_es1688_reset(struct snd_es1688 *chip)
{
 int i;

 outb(3, ES1688P(chip, RESET));
 udelay(10);
 outb(0, ES1688P(chip, RESET));
 udelay(30);
 for (i = 0; i < 1000 && !(inb(ES1688P(chip, DATA_AVAIL)) & 0x80); i++);
 if (inb(ES1688P(chip, READ)) != 0xaa) {
  snd_printd("ess_reset at 0x%lx: failed!!!\n", chip->port);
  return -ENODEV;
 }
 snd_es1688_dsp_command(chip, 0xc6);
 return 0;
}
