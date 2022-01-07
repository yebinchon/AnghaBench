
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int dma_addr; int period_size; int buffer_size; int rate; struct snd_ali_voice* private_data; } ;
struct snd_ali_voice {scalar_t__ number; int count; int eso; struct snd_ali_voice* extra; } ;
struct snd_ali {int reg_lock; TYPE_1__* card; scalar_t__ spdif_support; } ;
struct TYPE_2__ {int dev; } ;


 int ALI_GLOBAL_CONTROL ;
 scalar_t__ ALI_PCM_IN_CHANNEL ;
 int ALI_REG (struct snd_ali*,int ) ;
 scalar_t__ ALI_SPDIF_IN_CHANNEL ;
 scalar_t__ ALI_SPDIF_OUT_CHANNEL ;
 int ALI_SPDIF_OUT_CH_ENABLE ;
 int dev_dbg (int ,char*,...) ;
 int inl (int ) ;
 unsigned int snd_ali_control_mode (struct snd_pcm_substream*) ;
 unsigned int snd_ali_convert_rate (int ,int ) ;
 int snd_ali_disable_special_channel (struct snd_ali*,scalar_t__) ;
 int snd_ali_set_spdif_out_rate (struct snd_ali*,int ) ;
 int snd_ali_write_voice_regs (struct snd_ali*,scalar_t__,unsigned int,int ,unsigned int,unsigned int,int ,unsigned int,int,int,unsigned int,unsigned int) ;
 struct snd_ali* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ali_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_ali *codec = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ali_voice *pvoice = runtime->private_data;
 struct snd_ali_voice *evoice = pvoice->extra;

 unsigned int LBA;
 unsigned int Delta;
 unsigned int ESO;
 unsigned int CTRL;
 unsigned int GVSEL;
 unsigned int PAN;
 unsigned int VOL;
 unsigned int EC;

 dev_dbg(codec->card->dev, "playback_prepare ...\n");

 spin_lock_irq(&codec->reg_lock);


 Delta = snd_ali_convert_rate(runtime->rate, 0);

 if (pvoice->number == ALI_SPDIF_IN_CHANNEL ||
     pvoice->number == ALI_PCM_IN_CHANNEL)
  snd_ali_disable_special_channel(codec, pvoice->number);
 else if (codec->spdif_support &&
   (inl(ALI_REG(codec, ALI_GLOBAL_CONTROL)) &
    ALI_SPDIF_OUT_CH_ENABLE)
   && pvoice->number == ALI_SPDIF_OUT_CHANNEL) {
  snd_ali_set_spdif_out_rate(codec, runtime->rate);
  Delta = 0x1000;
 }


 LBA = runtime->dma_addr;


 pvoice->count = runtime->period_size;


 pvoice->eso = runtime->buffer_size;

 dev_dbg(codec->card->dev, "playback_prepare: eso=%xh count=%xh\n",
         pvoice->eso, pvoice->count);


 ESO = pvoice->eso -1;

 CTRL = snd_ali_control_mode(substream);

 GVSEL = 1;
 PAN = 0;
 VOL = 0;
 EC = 0;
 dev_dbg(codec->card->dev, "playback_prepare:\n");
 dev_dbg(codec->card->dev,
  "ch=%d, Rate=%d Delta=%xh,GVSEL=%xh,PAN=%xh,CTRL=%xh\n",
         pvoice->number,runtime->rate,Delta,GVSEL,PAN,CTRL);
 snd_ali_write_voice_regs(codec,
     pvoice->number,
     LBA,
     0,
     ESO,
     Delta,
     0,
     GVSEL,
     PAN,
     VOL,
     CTRL,
     EC);
 if (evoice) {
  evoice->count = pvoice->count;
  evoice->eso = pvoice->count << 1;
  ESO = evoice->eso - 1;
  snd_ali_write_voice_regs(codec,
      evoice->number,
      LBA,
      0,
      ESO,
      Delta,
      0,
      GVSEL,
      0x7f,
      0x3ff,
      CTRL,
      EC);
 }
 spin_unlock_irq(&codec->reg_lock);
 return 0;
}
