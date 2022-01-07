
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int buffer_size; struct snd_ali_voice* private_data; } ;
struct snd_ali_voice {int number; int running; } ;
struct snd_ali {TYPE_1__* card; int reg_lock; } ;
typedef unsigned int snd_pcm_uframes_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ALI_CSO_ALPHA_FMS ;
 scalar_t__ ALI_GC_CIR ;
 int ALI_REG (struct snd_ali*,scalar_t__) ;
 int dev_dbg (int ,char*,unsigned int) ;
 unsigned int inw (int ) ;
 int outb (int ,int ) ;
 struct snd_ali* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_ali_playback_pointer(struct snd_pcm_substream *substream)
{
 struct snd_ali *codec = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ali_voice *pvoice = runtime->private_data;
 unsigned int cso;

 spin_lock(&codec->reg_lock);
 if (!pvoice->running) {
  spin_unlock(&codec->reg_lock);
  return 0;
 }
 outb(pvoice->number, ALI_REG(codec, ALI_GC_CIR));
 cso = inw(ALI_REG(codec, ALI_CSO_ALPHA_FMS + 2));
 spin_unlock(&codec->reg_lock);
 dev_dbg(codec->card->dev, "playback pointer returned cso=%xh.\n", cso);

 cso %= runtime->buffer_size;
 return cso;
}
