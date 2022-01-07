
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int (* setup_rate ) (struct snd_ice1712*,unsigned int) ;} ;
struct TYPE_11__ {TYPE_4__ ops; } ;
struct TYPE_8__ {int (* set_pro_rate ) (struct snd_ice1712*,unsigned int) ;int (* i2s_mclk_changed ) (struct snd_ice1712*) ;} ;
struct snd_ice1712 {unsigned int cur_rate; unsigned int (* get_rate ) (struct snd_ice1712*) ;unsigned char (* set_mclk ) (struct snd_ice1712*,unsigned int) ;unsigned int akm_codecs; TYPE_5__ spdif; TYPE_6__* akm; TYPE_2__ gpio; int reg_lock; int (* set_rate ) (struct snd_ice1712*,unsigned int) ;int (* is_spdif_master ) (struct snd_ice1712*) ;TYPE_1__* hw_rates; } ;
struct TYPE_9__ {int (* set_rate_val ) (TYPE_6__*,unsigned int) ;} ;
struct TYPE_12__ {TYPE_3__ ops; } ;
struct TYPE_7__ {unsigned int* list; int count; } ;


 int DMA_CONTROL ;
 int DMA_PAUSE ;
 int DMA_PAUSES ;
 int DMA_STARTS ;
 int EBUSY ;
 int EINVAL ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int inb (int ) ;
 scalar_t__ is_pro_rate_locked (struct snd_ice1712*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct snd_ice1712*) ;
 unsigned int stub2 (struct snd_ice1712*) ;
 int stub3 (struct snd_ice1712*,unsigned int) ;
 unsigned char stub4 (struct snd_ice1712*,unsigned int) ;
 int stub5 (struct snd_ice1712*) ;
 int stub6 (struct snd_ice1712*,unsigned int) ;
 int stub7 (TYPE_6__*,unsigned int) ;
 int stub8 (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static int snd_vt1724_set_pro_rate(struct snd_ice1712 *ice, unsigned int rate,
        int force)
{
 unsigned long flags;
 unsigned char mclk_change;
 unsigned int i, old_rate;

 if (rate > ice->hw_rates->list[ice->hw_rates->count - 1])
  return -EINVAL;

 spin_lock_irqsave(&ice->reg_lock, flags);
 if ((inb(ICEMT1724(ice, DMA_CONTROL)) & DMA_STARTS) ||
     (inb(ICEMT1724(ice, DMA_PAUSE)) & DMA_PAUSES)) {

  spin_unlock_irqrestore(&ice->reg_lock, flags);
  return ((rate == ice->cur_rate) && !force) ? 0 : -EBUSY;
 }
 if (!force && is_pro_rate_locked(ice)) {


  spin_unlock_irqrestore(&ice->reg_lock, flags);
  return (rate == ice->cur_rate) ? 0 : -EBUSY;
 }

 if (force || !ice->is_spdif_master(ice)) {


  old_rate = ice->get_rate(ice);
  if (force || (old_rate != rate))
   ice->set_rate(ice, rate);
  else if (rate == ice->cur_rate) {
   spin_unlock_irqrestore(&ice->reg_lock, flags);
   return 0;
  }
 }

 ice->cur_rate = rate;


 mclk_change = ice->set_mclk(ice, rate);

 spin_unlock_irqrestore(&ice->reg_lock, flags);

 if (mclk_change && ice->gpio.i2s_mclk_changed)
  ice->gpio.i2s_mclk_changed(ice);
 if (ice->gpio.set_pro_rate)
  ice->gpio.set_pro_rate(ice, rate);


 for (i = 0; i < ice->akm_codecs; i++) {
  if (ice->akm[i].ops.set_rate_val)
   ice->akm[i].ops.set_rate_val(&ice->akm[i], rate);
 }
 if (ice->spdif.ops.setup_rate)
  ice->spdif.ops.setup_rate(ice, rate);

 return 0;
}
