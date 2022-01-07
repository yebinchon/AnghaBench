
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bt87x {int reg_control; int reg_lock; } ;


 int CTL_ACAP_EN ;
 int CTL_FIFO_ENABLE ;
 int CTL_RISC_ENABLE ;
 int MY_INTERRUPTS ;
 int REG_GPIO_DMA_CTL ;
 int REG_INT_MASK ;
 int REG_INT_STAT ;
 int snd_bt87x_writel (struct snd_bt87x*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_bt87x_stop(struct snd_bt87x *chip)
{
 spin_lock(&chip->reg_lock);
 chip->reg_control &= ~(CTL_FIFO_ENABLE | CTL_RISC_ENABLE | CTL_ACAP_EN);
 snd_bt87x_writel(chip, REG_GPIO_DMA_CTL, chip->reg_control);
 snd_bt87x_writel(chip, REG_INT_MASK, 0);
 snd_bt87x_writel(chip, REG_INT_STAT, MY_INTERRUPTS);
 spin_unlock(&chip->reg_lock);
 return 0;
}
