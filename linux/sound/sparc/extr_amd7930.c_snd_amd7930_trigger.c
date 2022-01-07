
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_amd7930 {unsigned int flags; int lock; scalar_t__ regs; } ;


 scalar_t__ AMD7930_CR ;
 scalar_t__ AMD7930_DR ;
 int AMR_MUX_MCR4 ;
 int AM_MUX_MCR4_ENABLE_INTS ;
 int EINVAL ;
 int SNDRV_PCM_TRIGGER_START ;
 int SNDRV_PCM_TRIGGER_STOP ;
 int sbus_writeb (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_amd7930_trigger(struct snd_amd7930 *amd, unsigned int flag, int cmd)
{
 unsigned long flags;
 int result = 0;

 spin_lock_irqsave(&amd->lock, flags);
 if (cmd == SNDRV_PCM_TRIGGER_START) {
  if (!(amd->flags & flag)) {
   amd->flags |= flag;


   sbus_writeb(AMR_MUX_MCR4, amd->regs + AMD7930_CR);
   sbus_writeb(AM_MUX_MCR4_ENABLE_INTS, amd->regs + AMD7930_DR);
  }
 } else if (cmd == SNDRV_PCM_TRIGGER_STOP) {
  if (amd->flags & flag) {
   amd->flags &= ~flag;


   sbus_writeb(AMR_MUX_MCR4, amd->regs + AMD7930_CR);
   sbus_writeb(0, amd->regs + AMD7930_DR);
  }
 } else {
  result = -EINVAL;
 }
 spin_unlock_irqrestore(&amd->lock, flags);

 return result;
}
