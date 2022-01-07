
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cs46xx {int reg_lock; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {scalar_t__ npcm_channels; int nsrc_scb; scalar_t__* src_scb_slots; } ;
struct dsp_pcm_channel_descriptor {int unlinked; size_t src_slot; TYPE_1__* src_scb; TYPE_1__* pcm_reader_scb; int * private_data; scalar_t__ active; } ;
struct TYPE_2__ {scalar_t__ ref_count; } ;


 size_t DSP_MAX_SRC_NR ;
 int cs46xx_dsp_remove_scb (struct snd_cs46xx*,TYPE_1__*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void cs46xx_dsp_destroy_pcm_channel (struct snd_cs46xx * chip,
         struct dsp_pcm_channel_descriptor * pcm_channel)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;
 unsigned long flags;

 if (snd_BUG_ON(!pcm_channel->active ||
         ins->npcm_channels <= 0 ||
         pcm_channel->src_scb->ref_count <= 0))
  return;

 spin_lock_irqsave(&chip->reg_lock, flags);
 pcm_channel->unlinked = 1;
 pcm_channel->active = 0;
 pcm_channel->private_data = ((void*)0);
 pcm_channel->src_scb->ref_count --;
 ins->npcm_channels --;
 spin_unlock_irqrestore(&chip->reg_lock, flags);

 cs46xx_dsp_remove_scb(chip,pcm_channel->pcm_reader_scb);

 if (!pcm_channel->src_scb->ref_count) {
  cs46xx_dsp_remove_scb(chip,pcm_channel->src_scb);

  if (snd_BUG_ON(pcm_channel->src_slot < 0 ||
          pcm_channel->src_slot >= DSP_MAX_SRC_NR))
   return;

  ins->src_scb_slots[pcm_channel->src_slot] = 0;
  ins->nsrc_scb --;
 }
}
