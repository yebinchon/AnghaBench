
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_es1688 {int dummy; } ;


 int DATA_AVAIL ;
 int ENODEV ;
 int ES1688P (struct snd_es1688*,int ) ;
 int READ ;
 int inb (int ) ;
 int snd_printd (char*,int ,int) ;

__attribute__((used)) static int snd_es1688_dsp_get_byte(struct snd_es1688 *chip)
{
 int i;

 for (i = 1000; i; i--)
  if (inb(ES1688P(chip, DATA_AVAIL)) & 0x80)
   return inb(ES1688P(chip, READ));
 snd_printd("es1688 get byte failed: 0x%lx = 0x%x!!!\n", ES1688P(chip, DATA_AVAIL), inb(ES1688P(chip, DATA_AVAIL)));
 return -ENODEV;
}
