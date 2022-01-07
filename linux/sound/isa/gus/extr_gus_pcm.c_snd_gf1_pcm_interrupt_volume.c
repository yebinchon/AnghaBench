
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_gus_voice {int number; struct gus_pcm_private* private_data; } ;
struct TYPE_2__ {unsigned short pcm_volume_level_left; unsigned short pcm_volume_level_right; } ;
struct snd_gus_card {int reg_lock; TYPE_1__ gf1; } ;
struct gus_pcm_private {int flags; int final_volume; int * substream; struct snd_gus_voice** pvoices; } ;


 int SNDRV_GF1_PCM_PFLG_ACTIVE ;
 int SNDRV_GF1_VB_VOLUME_CONTROL ;
 int SNDRV_GF1_VW_VOLUME ;
 int snd_gf1_ctrl_stop (struct snd_gus_card*,int ) ;
 int snd_gf1_select_voice (struct snd_gus_card*,int ) ;
 int snd_gf1_write16 (struct snd_gus_card*,int ,unsigned short) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void snd_gf1_pcm_interrupt_volume(struct snd_gus_card * gus,
      struct snd_gus_voice * pvoice)
{
 unsigned short vol;
 int cvoice;
 struct gus_pcm_private *pcmp = pvoice->private_data;


 spin_lock(&gus->reg_lock);
 snd_gf1_select_voice(gus, pvoice->number);
 snd_gf1_ctrl_stop(gus, SNDRV_GF1_VB_VOLUME_CONTROL);
 spin_unlock(&gus->reg_lock);
 if (pcmp == ((void*)0))
  return;

 if (!(pcmp->flags & SNDRV_GF1_PCM_PFLG_ACTIVE))
  return;

 cvoice = pcmp->pvoices[0] == pvoice ? 0 : 1;
 if (pcmp->substream == ((void*)0))
  return;
 vol = !cvoice ? gus->gf1.pcm_volume_level_left : gus->gf1.pcm_volume_level_right;
 spin_lock(&gus->reg_lock);
 snd_gf1_select_voice(gus, pvoice->number);
 snd_gf1_write16(gus, SNDRV_GF1_VW_VOLUME, vol);
 pcmp->final_volume = 1;
 spin_unlock(&gus->reg_lock);
}
