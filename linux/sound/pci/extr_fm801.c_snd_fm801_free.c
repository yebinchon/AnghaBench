
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm801 {scalar_t__ irq; int tea575x_tuner; int v4l2_dev; int tea; int dev; } ;


 int IRQ_MASK ;
 int TUNER_DISABLED ;
 int devm_free_irq (int ,scalar_t__,struct fm801*) ;
 unsigned short fm801_readw (struct fm801*,int ) ;
 int fm801_writew (struct fm801*,int ,unsigned short) ;
 int snd_tea575x_exit (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int snd_fm801_free(struct fm801 *chip)
{
 unsigned short cmdw;

 if (chip->irq < 0)
  goto __end_hw;


 cmdw = fm801_readw(chip, IRQ_MASK);
 cmdw |= 0x00c3;
 fm801_writew(chip, IRQ_MASK, cmdw);

 devm_free_irq(chip->dev, chip->irq, chip);

      __end_hw:






 return 0;
}
