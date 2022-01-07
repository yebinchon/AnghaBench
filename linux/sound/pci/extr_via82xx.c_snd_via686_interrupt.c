
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viadev {unsigned char in_interrupt; scalar_t__ substream; scalar_t__ fragsize; scalar_t__ hwptr_done; scalar_t__ running; } ;
struct via82xx {unsigned int intr_mask; unsigned int num_devs; int reg_lock; struct viadev* devs; TYPE_1__* rmidi; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int private_data; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OFFSET_STATUS ;
 int SGD_SHADOW ;
 int VIADEV_REG (struct viadev*,int ) ;
 int VIAREG (struct via82xx*,int ) ;
 unsigned char VIA_REG_STAT_EOL ;
 unsigned char VIA_REG_STAT_FLAG ;
 unsigned char VIA_REG_STAT_STOPPED ;
 unsigned char inb (int ) ;
 unsigned int inl (int ) ;
 int outb (unsigned char,int ) ;
 int snd_mpu401_uart_interrupt (int,int ) ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_via686_interrupt(int irq, void *dev_id)
{
 struct via82xx *chip = dev_id;
 unsigned int status;
 unsigned int i;

 status = inl(VIAREG(chip, SGD_SHADOW));
 if (! (status & chip->intr_mask)) {
  if (chip->rmidi)

   return snd_mpu401_uart_interrupt(irq, chip->rmidi->private_data);
  return IRQ_NONE;
 }


 spin_lock(&chip->reg_lock);
 for (i = 0; i < chip->num_devs; i++) {
  struct viadev *viadev = &chip->devs[i];
  unsigned char c_status = inb(VIADEV_REG(viadev, OFFSET_STATUS));
  if (! (c_status & (VIA_REG_STAT_EOL|VIA_REG_STAT_FLAG|VIA_REG_STAT_STOPPED)))
   continue;
  if (viadev->substream && viadev->running) {





   if (c_status & VIA_REG_STAT_EOL)
    viadev->hwptr_done = 0;
   else
    viadev->hwptr_done += viadev->fragsize;
   viadev->in_interrupt = c_status;
   spin_unlock(&chip->reg_lock);
   snd_pcm_period_elapsed(viadev->substream);
   spin_lock(&chip->reg_lock);
   viadev->in_interrupt = 0;
  }
  outb(c_status, VIADEV_REG(viadev, OFFSET_STATUS));
 }
 spin_unlock(&chip->reg_lock);
 return IRQ_HANDLED;
}
