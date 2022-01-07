
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int chmap; int chcnt; } ;
struct snd_ali {TYPE_2__ synth; TYPE_1__* card; } ;
struct TYPE_3__ {int dev; } ;


 int ALI_CHANNELS ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static void snd_ali_free_channel_pcm(struct snd_ali *codec, int channel)
{
 unsigned int idx = channel & 0x0000001f;

 dev_dbg(codec->card->dev, "free_channel_pcm channel=%d\n", channel);

 if (channel < 0 || channel >= ALI_CHANNELS)
  return;

 if (!(codec->synth.chmap & (1 << idx))) {
  dev_err(codec->card->dev,
   "ali_free_channel_pcm: channel %d is not in use.\n",
   channel);
  return;
 } else {
  codec->synth.chmap &= ~(1 << idx);
  codec->synth.chcnt--;
 }
}
