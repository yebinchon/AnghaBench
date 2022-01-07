
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm801 {scalar_t__ irq; } ;


 unsigned short FM801_IRQ_CAPTURE ;
 unsigned short FM801_IRQ_MPU ;
 unsigned short FM801_IRQ_PLAYBACK ;
 int FM_VOL ;
 int I2S_MODE ;
 int I2S_VOL ;
 int IRQ_MASK ;
 int IRQ_STATUS ;
 int PCM_VOL ;
 unsigned short fm801_readw (struct fm801*,int ) ;
 int fm801_writew (struct fm801*,int ,unsigned short) ;

__attribute__((used)) static void snd_fm801_chip_init(struct fm801 *chip)
{
 unsigned short cmdw;


 fm801_writew(chip, PCM_VOL, 0x0808);
 fm801_writew(chip, FM_VOL, 0x9f1f);
 fm801_writew(chip, I2S_VOL, 0x8808);


 fm801_writew(chip, I2S_MODE, 0x0003);


 cmdw = fm801_readw(chip, IRQ_MASK);
 if (chip->irq < 0)
  cmdw |= 0x00c3;
 else
  cmdw &= ~0x0083;
 fm801_writew(chip, IRQ_MASK, cmdw);


 fm801_writew(chip, IRQ_STATUS,
       FM801_IRQ_PLAYBACK | FM801_IRQ_CAPTURE | FM801_IRQ_MPU);
}
