
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_ac97_info {int done; } ;
typedef int irqreturn_t ;


 int AC97GIS ;
 int AC97IM ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 unsigned int ep93xx_ac97_read_reg (struct ep93xx_ac97_info*,int ) ;
 int ep93xx_ac97_write_reg (struct ep93xx_ac97_info*,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t ep93xx_ac97_interrupt(int irq, void *dev_id)
{
 struct ep93xx_ac97_info *info = dev_id;
 unsigned status, mask;






 status = ep93xx_ac97_read_reg(info, AC97GIS);
 mask = ep93xx_ac97_read_reg(info, AC97IM);
 mask &= ~status;
 ep93xx_ac97_write_reg(info, AC97IM, mask);

 complete(&info->done);
 return IRQ_HANDLED;
}
