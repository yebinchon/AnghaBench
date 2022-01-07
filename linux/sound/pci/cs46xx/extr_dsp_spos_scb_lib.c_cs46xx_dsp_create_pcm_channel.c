
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_cs46xx {int reg_lock; TYPE_1__* card; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int nsrc_scb; int* src_scb_slots; scalar_t__ the_null_scb; struct dsp_pcm_channel_descriptor* pcm_channels; int npcm_channels; struct dsp_scb_descriptor* asynch_tx_scb; struct dsp_scb_descriptor* center_lfe_mix_scb; struct dsp_scb_descriptor* rear_mix_scb; struct dsp_scb_descriptor* master_mix_scb; } ;
struct dsp_scb_descriptor {scalar_t__ sub_list_ptr; int ref_count; } ;
struct dsp_pcm_channel_descriptor {int active; int sample_rate; int src_slot; int unlinked; int pcm_slot; struct dsp_scb_descriptor* mixer_scb; void* private_data; struct dsp_scb_descriptor* src_scb; struct dsp_scb_descriptor* pcm_reader_scb; } ;
struct TYPE_2__ {int dev; } ;


 int CS46XX_DSP_CAPTURE_CHANNEL ;

 int DSP_MAX_PCM_CHANNELS ;
 int DSP_MAX_SCB_NAME ;
 int DSP_MAX_SRC_NR ;




 int SCB_ON_PARENT_NEXT_SCB ;
 int SCB_ON_PARENT_SUBLIST_SCB ;
 struct dsp_scb_descriptor* cs46xx_dsp_create_pcm_reader_scb (struct snd_cs46xx*,char*,int ,int,int,int,int *,int ) ;
 struct dsp_scb_descriptor* cs46xx_dsp_create_src_task_scb (struct snd_cs46xx*,char*,int,int ,int ,int,struct dsp_scb_descriptor*,int,int) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 struct dsp_scb_descriptor* find_next_free_scb (struct snd_cs46xx*,scalar_t__) ;
 int * pcm_reader_buffer_addr ;
 int snd_BUG () ;
 scalar_t__ snd_BUG_ON (int) ;
 int snprintf (char*,int,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * src_delay_buffer_addr ;
 int * src_output_buffer_addr ;

struct dsp_pcm_channel_descriptor *
cs46xx_dsp_create_pcm_channel (struct snd_cs46xx * chip,
          u32 sample_rate, void * private_data,
          u32 hw_dma_addr,
          int pcm_channel_id)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;
 struct dsp_scb_descriptor * src_scb = ((void*)0), * pcm_scb, * mixer_scb = ((void*)0);
 struct dsp_scb_descriptor * src_parent_scb = ((void*)0);


 char scb_name[DSP_MAX_SCB_NAME];
 int i, pcm_index = -1, insert_point, src_index = -1, pass_through = 0;
 unsigned long flags;

 switch (pcm_channel_id) {
 case 130:
  mixer_scb = ins->master_mix_scb;
  break;
 case 129:
  mixer_scb = ins->rear_mix_scb;
  break;
 case 131:
  mixer_scb = ins->center_lfe_mix_scb;
  break;
 case 128:

  snd_BUG();
  break;
 case 132:
  if (snd_BUG_ON(!ins->asynch_tx_scb))
   return ((void*)0);
  mixer_scb = ins->asynch_tx_scb;




  if (sample_rate == 48000) {
   dev_dbg(chip->card->dev, "IEC958 pass through\n");

   pass_through = 1;
  }
  break;
 default:
  snd_BUG();
  return ((void*)0);
 }

 if (!sample_rate) sample_rate = 44100;


 for (i = 0; i < DSP_MAX_PCM_CHANNELS &&
       (pcm_index == -1 || src_scb == ((void*)0)); ++i) {



  if (i == CS46XX_DSP_CAPTURE_CHANNEL) continue;

  if (ins->pcm_channels[i].active) {
   if (!src_scb &&
       ins->pcm_channels[i].sample_rate == sample_rate &&
       ins->pcm_channels[i].mixer_scb == mixer_scb) {
    src_scb = ins->pcm_channels[i].src_scb;
    ins->pcm_channels[i].src_scb->ref_count ++;
    src_index = ins->pcm_channels[i].src_slot;
   }
  } else if (pcm_index == -1) {
   pcm_index = i;
  }
 }

 if (pcm_index == -1) {
  dev_err(chip->card->dev, "dsp_spos: no free PCM channel\n");
  return ((void*)0);
 }

 if (src_scb == ((void*)0)) {
  if (ins->nsrc_scb >= DSP_MAX_SRC_NR) {
   dev_err(chip->card->dev,
    "dsp_spos: to many SRC instances\n!");
   return ((void*)0);
  }


  for (i = 0; i < DSP_MAX_SRC_NR; ++i) {
   if (ins->src_scb_slots[i] == 0) {
    src_index = i;
    ins->src_scb_slots[i] = 1;
    break;
   }
  }
  if (snd_BUG_ON(src_index == -1))
   return ((void*)0);


  if (mixer_scb->sub_list_ptr == ins->the_null_scb) {
   src_parent_scb = mixer_scb;
   insert_point = SCB_ON_PARENT_SUBLIST_SCB;
  } else {
   src_parent_scb = find_next_free_scb(chip,mixer_scb->sub_list_ptr);
   insert_point = SCB_ON_PARENT_NEXT_SCB;
  }

  snprintf (scb_name,DSP_MAX_SCB_NAME,"SrcTask_SCB%d",src_index);

  dev_dbg(chip->card->dev,
   "dsp_spos: creating SRC \"%s\"\n", scb_name);
  src_scb = cs46xx_dsp_create_src_task_scb(chip,scb_name,
        sample_rate,
        src_output_buffer_addr[src_index],
        src_delay_buffer_addr[src_index],

        0x400 + (src_index * 0x10) ,
        src_parent_scb,
        insert_point,
        pass_through);

  if (!src_scb) {
   dev_err(chip->card->dev,
    "dsp_spos: failed to create SRCtaskSCB\n");
   return ((void*)0);
  }



  ins->nsrc_scb ++;
 }


 snprintf (scb_name,DSP_MAX_SCB_NAME,"PCMReader_SCB%d",pcm_index);

 dev_dbg(chip->card->dev, "dsp_spos: creating PCM \"%s\" (%d)\n",
  scb_name, pcm_channel_id);

 pcm_scb = cs46xx_dsp_create_pcm_reader_scb(chip,scb_name,
         pcm_reader_buffer_addr[pcm_index],

         (pcm_index * 0x10) + 0x200,
         pcm_index,
         hw_dma_addr,
                           ((void*)0),
                           0
                           );

 if (!pcm_scb) {
  dev_err(chip->card->dev,
   "dsp_spos: failed to create PCMreaderSCB\n");
  return ((void*)0);
 }

 spin_lock_irqsave(&chip->reg_lock, flags);
 ins->pcm_channels[pcm_index].sample_rate = sample_rate;
 ins->pcm_channels[pcm_index].pcm_reader_scb = pcm_scb;
 ins->pcm_channels[pcm_index].src_scb = src_scb;
 ins->pcm_channels[pcm_index].unlinked = 1;
 ins->pcm_channels[pcm_index].private_data = private_data;
 ins->pcm_channels[pcm_index].src_slot = src_index;
 ins->pcm_channels[pcm_index].active = 1;
 ins->pcm_channels[pcm_index].pcm_slot = pcm_index;
 ins->pcm_channels[pcm_index].mixer_scb = mixer_scb;
 ins->npcm_channels ++;
 spin_unlock_irqrestore(&chip->reg_lock, flags);

 return (ins->pcm_channels + pcm_index);
}
