
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int reg_lock; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {struct dsp_scb_descriptor* the_null_scb; } ;
struct dsp_scb_descriptor {struct dsp_scb_descriptor* parent_scb_ptr; struct dsp_scb_descriptor* sub_list_ptr; struct dsp_scb_descriptor* next_scb_ptr; } ;
struct dsp_pcm_channel_descriptor {scalar_t__ unlinked; struct dsp_scb_descriptor* pcm_reader_scb; struct dsp_scb_descriptor* src_scb; } ;


 int EIO ;
 int cs46xx_dsp_spos_update_scb (struct snd_cs46xx*,struct dsp_scb_descriptor*) ;
 int snd_BUG_ON (struct dsp_scb_descriptor*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int cs46xx_dsp_pcm_link (struct snd_cs46xx * chip,
    struct dsp_pcm_channel_descriptor * pcm_channel)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;
 struct dsp_scb_descriptor * parent_scb;
 struct dsp_scb_descriptor * src_scb = pcm_channel->src_scb;
 unsigned long flags;

 spin_lock_irqsave(&chip->reg_lock, flags);

 if (pcm_channel->unlinked == 0) {
  spin_unlock_irqrestore(&chip->reg_lock, flags);
  return -EIO;
 }

 parent_scb = src_scb;

 if (src_scb->sub_list_ptr != ins->the_null_scb) {
  src_scb->sub_list_ptr->parent_scb_ptr = pcm_channel->pcm_reader_scb;
  pcm_channel->pcm_reader_scb->next_scb_ptr = src_scb->sub_list_ptr;
 }

 src_scb->sub_list_ptr = pcm_channel->pcm_reader_scb;

 snd_BUG_ON(pcm_channel->pcm_reader_scb->parent_scb_ptr);
 pcm_channel->pcm_reader_scb->parent_scb_ptr = parent_scb;


 cs46xx_dsp_spos_update_scb(chip,pcm_channel->pcm_reader_scb);


 cs46xx_dsp_spos_update_scb(chip,parent_scb);

 pcm_channel->unlinked = 0;
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return 0;
}
