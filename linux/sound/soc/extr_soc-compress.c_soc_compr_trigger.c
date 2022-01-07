
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_3__* card; struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {TYPE_2__* driver; } ;
struct snd_compr_stream {int direction; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_6__ {int pcm_mutex; int pcm_subclass; } ;
struct TYPE_5__ {TYPE_1__* cops; } ;
struct TYPE_4__ {int (* trigger ) (struct snd_compr_stream*,int,struct snd_soc_dai*) ;} ;




 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int snd_soc_dai_digital_mute (struct snd_soc_dai*,int,int ) ;
 int soc_compr_components_trigger (struct snd_compr_stream*,int) ;
 int stub1 (struct snd_compr_stream*,int,struct snd_soc_dai*) ;

__attribute__((used)) static int soc_compr_trigger(struct snd_compr_stream *cstream, int cmd)
{
 struct snd_soc_pcm_runtime *rtd = cstream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 int ret;

 mutex_lock_nested(&rtd->card->pcm_mutex, rtd->card->pcm_subclass);

 ret = soc_compr_components_trigger(cstream, cmd);
 if (ret < 0)
  goto out;

 if (cpu_dai->driver->cops && cpu_dai->driver->cops->trigger)
  cpu_dai->driver->cops->trigger(cstream, cmd, cpu_dai);

 switch (cmd) {
 case 129:
  snd_soc_dai_digital_mute(codec_dai, 0, cstream->direction);
  break;
 case 128:
  snd_soc_dai_digital_mute(codec_dai, 1, cstream->direction);
  break;
 }

out:
 mutex_unlock(&rtd->card->pcm_mutex);
 return ret;
}
