
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viadev {unsigned int shadow_shift; unsigned char in_interrupt; scalar_t__ fragsize; scalar_t__ hwptr_done; scalar_t__ running; struct snd_pcm_substream* substream; } ;
struct via82xx {unsigned int num_devs; int reg_lock; struct viadev* devs; } ;
struct snd_pcm_substream {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int OFFSET_STATUS ;
 int SGD_SHADOW ;
 unsigned int VIA8233_SHADOW_STAT_ACTIVE ;
 int VIADEV_REG (struct viadev*,int ) ;
 int VIAREG (struct via82xx*,int ) ;
 unsigned char VIA_REG_STAT_ACTIVE ;
 unsigned int VIA_REG_STAT_EOL ;
 unsigned int VIA_REG_STAT_FLAG ;
 unsigned int inl (int ) ;
 int outb (unsigned char,int ) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_via8233_interrupt(int irq, void *dev_id)
{
 struct via82xx *chip = dev_id;
 unsigned int status;
 unsigned int i;
 int irqreturn = 0;


 spin_lock(&chip->reg_lock);
 status = inl(VIAREG(chip, SGD_SHADOW));

 for (i = 0; i < chip->num_devs; i++) {
  struct viadev *viadev = &chip->devs[i];
  struct snd_pcm_substream *substream;
  unsigned char c_status, shadow_status;

  shadow_status = (status >> viadev->shadow_shift) &
   (VIA8233_SHADOW_STAT_ACTIVE|VIA_REG_STAT_EOL|
    VIA_REG_STAT_FLAG);
  c_status = shadow_status & (VIA_REG_STAT_EOL|VIA_REG_STAT_FLAG);
  if (!c_status)
   continue;

  substream = viadev->substream;
  if (substream && viadev->running) {





   if (c_status & VIA_REG_STAT_EOL)
    viadev->hwptr_done = 0;
   else
    viadev->hwptr_done += viadev->fragsize;
   viadev->in_interrupt = c_status;
   if (shadow_status & VIA8233_SHADOW_STAT_ACTIVE)
    viadev->in_interrupt |= VIA_REG_STAT_ACTIVE;
   spin_unlock(&chip->reg_lock);

   snd_pcm_period_elapsed(substream);

   spin_lock(&chip->reg_lock);
   viadev->in_interrupt = 0;
  }
  outb(c_status, VIADEV_REG(viadev, OFFSET_STATUS));
  irqreturn = 1;
 }
 spin_unlock(&chip->reg_lock);
 return IRQ_RETVAL(irqreturn);
}
