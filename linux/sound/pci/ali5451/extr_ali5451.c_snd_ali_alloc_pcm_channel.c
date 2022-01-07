
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ chcnt; int chmap; } ;
struct snd_ali {TYPE_1__* card; TYPE_2__ synth; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ ALI_CHANNELS ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int snd_ali_alloc_pcm_channel(struct snd_ali *codec, int channel)
{
 unsigned int idx = channel & 0x1f;

 if (codec->synth.chcnt >= ALI_CHANNELS){
  dev_err(codec->card->dev,
      "ali_alloc_pcm_channel: no free channels.\n");
  return -1;
 }

 if (!(codec->synth.chmap & (1 << idx))) {
  codec->synth.chmap |= 1 << idx;
  codec->synth.chcnt++;
  dev_dbg(codec->card->dev, "alloc_pcm_channel no. %d.\n", idx);
  return idx;
 }
 return -1;
}
