
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; int format; struct loopback_pcm* private_data; } ;
struct loopback_pcm {struct loopback_cable* cable; } ;
struct TYPE_2__ {int channels_max; int channels_min; int rate_max; int rate_min; int formats; } ;
struct loopback_cable {TYPE_1__ hw; } ;


 int pcm_format_to_bits (int ) ;

__attribute__((used)) static void params_change(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct loopback_pcm *dpcm = runtime->private_data;
 struct loopback_cable *cable = dpcm->cable;

 cable->hw.formats = pcm_format_to_bits(runtime->format);
 cable->hw.rate_min = runtime->rate;
 cable->hw.rate_max = runtime->rate;
 cable->hw.channels_min = runtime->channels;
 cable->hw.channels_max = runtime->channels;
}
