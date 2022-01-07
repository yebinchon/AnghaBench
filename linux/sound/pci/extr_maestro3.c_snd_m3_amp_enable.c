
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_m3 {int iobase; int amp_gpio; int external_amp; } ;


 scalar_t__ GPIO_DATA ;
 scalar_t__ GPIO_DIRECTION ;
 scalar_t__ GPIO_MASK ;
 int GPO_PRIMARY_AC97 ;
 int GPO_SECONDARY_AC97 ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void
snd_m3_amp_enable(struct snd_m3 *chip, int enable)
{
 int io = chip->iobase;
 u16 gpo, polarity;

 if (! chip->external_amp)
  return;

 polarity = enable ? 0 : 1;
 polarity = polarity << chip->amp_gpio;
 gpo = 1 << chip->amp_gpio;

 outw(~gpo, io + GPIO_MASK);

 outw(inw(io + GPIO_DIRECTION) | gpo,
      io + GPIO_DIRECTION);

 outw((GPO_SECONDARY_AC97 | GPO_PRIMARY_AC97 | polarity),
      io + GPIO_DATA);

 outw(0xffff, io + GPIO_MASK);
}
