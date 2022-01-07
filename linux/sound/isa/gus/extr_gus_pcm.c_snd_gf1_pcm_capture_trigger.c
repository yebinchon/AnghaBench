
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int pcm_rcntrl_reg; } ;
struct snd_gus_card {int reg_lock; TYPE_1__ gf1; } ;


 int EINVAL ;
 int SNDRV_GF1_GB_REC_DMA_CONTROL ;
 int SNDRV_PCM_TRIGGER_START ;
 int SNDRV_PCM_TRIGGER_STOP ;
 int snd_gf1_look8 (struct snd_gus_card*,int ) ;
 int snd_gf1_write8 (struct snd_gus_card*,int ,int) ;
 struct snd_gus_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_gf1_pcm_capture_trigger(struct snd_pcm_substream *substream,
           int cmd)
{
 struct snd_gus_card *gus = snd_pcm_substream_chip(substream);
 int val;

 if (cmd == SNDRV_PCM_TRIGGER_START) {
  val = gus->gf1.pcm_rcntrl_reg;
 } else if (cmd == SNDRV_PCM_TRIGGER_STOP) {
  val = 0;
 } else {
  return -EINVAL;
 }

 spin_lock(&gus->reg_lock);
 snd_gf1_write8(gus, SNDRV_GF1_GB_REC_DMA_CONTROL, val);
 snd_gf1_look8(gus, SNDRV_GF1_GB_REC_DMA_CONTROL);
 spin_unlock(&gus->reg_lock);
 return 0;
}
