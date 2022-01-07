
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ml403_ac97cr {int capture_ind2_rec; int capture_substream; scalar_t__ enable_capture_irq; int ind_rec; int playback_substream; scalar_t__ enable_irq; struct platform_device* pfdev; } ;
struct platform_device {int dummy; } ;
typedef int irqreturn_t ;


 int INIT_INFO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PDEBUG (int ,char*,int) ;
 int disable_irq_nosync (int) ;
 int platform_get_irq (struct platform_device*,int) ;
 int snd_ml403_ac97cr_capture_ind2_copy ;
 int snd_ml403_ac97cr_capture_ind2_null ;
 int snd_ml403_ac97cr_playback_ind2_copy ;
 int snd_ml403_ac97cr_playback_ind2_zero ;
 int snd_pcm_indirect2_capture_interrupt (int ,int *,int ,int ) ;
 int snd_pcm_indirect2_playback_interrupt (int ,int *,int ,int ) ;

__attribute__((used)) static irqreturn_t snd_ml403_ac97cr_irq(int irq, void *dev_id)
{
 struct snd_ml403_ac97cr *ml403_ac97cr;
 struct platform_device *pfdev;
 int cmp_irq;

 ml403_ac97cr = (struct snd_ml403_ac97cr *)dev_id;
 if (ml403_ac97cr == ((void*)0))
  return IRQ_NONE;

 pfdev = ml403_ac97cr->pfdev;


 cmp_irq = platform_get_irq(pfdev, 0);
 if (irq == cmp_irq) {
  if (ml403_ac97cr->enable_irq)
   snd_pcm_indirect2_playback_interrupt(
    ml403_ac97cr->playback_substream,
    &ml403_ac97cr->ind_rec,
    snd_ml403_ac97cr_playback_ind2_copy,
    snd_ml403_ac97cr_playback_ind2_zero);
  else
   goto __disable_irq;
 } else {

  cmp_irq = platform_get_irq(pfdev, 1);
  if (irq == cmp_irq) {
   if (ml403_ac97cr->enable_capture_irq)
    snd_pcm_indirect2_capture_interrupt(
     ml403_ac97cr->capture_substream,
     &ml403_ac97cr->capture_ind2_rec,
     snd_ml403_ac97cr_capture_ind2_copy,
     snd_ml403_ac97cr_capture_ind2_null);
   else
    goto __disable_irq;
  } else
   return IRQ_NONE;
 }
 return IRQ_HANDLED;

__disable_irq:
 PDEBUG(INIT_INFO, "irq(): irq %d is meant to be disabled! So, now try "
        "to disable it _really_!\n", irq);
 disable_irq_nosync(irq);
 return IRQ_HANDLED;
}
