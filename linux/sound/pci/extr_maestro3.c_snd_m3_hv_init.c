
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_m3 {unsigned long iobase; int is_omnibook; } ;


 scalar_t__ GPIO_DATA ;
 scalar_t__ GPIO_DIRECTION ;
 scalar_t__ GPIO_MASK ;
 int GPI_VOL_DOWN ;
 int GPI_VOL_UP ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void
snd_m3_hv_init(struct snd_m3 *chip)
{
 unsigned long io = chip->iobase;
 u16 val = GPI_VOL_DOWN | GPI_VOL_UP;

 if (!chip->is_omnibook)
  return;





 outw(0xffff, io + GPIO_MASK);
 outw(0x0000, io + GPIO_DATA);

 outw(~val, io + GPIO_MASK);
 outw(inw(io + GPIO_DIRECTION) & ~val, io + GPIO_DIRECTION);
 outw(val, io + GPIO_MASK);

 outw(0xffff, io + GPIO_MASK);
}
