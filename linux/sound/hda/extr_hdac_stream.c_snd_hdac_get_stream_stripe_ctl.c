
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int channels; unsigned int rate; unsigned int sample_bits; } ;
struct hdac_bus {int dummy; } ;


 unsigned int AZX_GCAP_NSDO ;
 int GCAP ;
 unsigned int snd_hdac_chip_readl (struct hdac_bus*,int ) ;

int snd_hdac_get_stream_stripe_ctl(struct hdac_bus *bus,
       struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned int channels = runtime->channels,
       rate = runtime->rate,
       bits_per_sample = runtime->sample_bits,
       max_sdo_lines, value, sdo_line;


 max_sdo_lines = snd_hdac_chip_readl(bus, GCAP) & AZX_GCAP_NSDO;


 for (sdo_line = max_sdo_lines; sdo_line > 0; sdo_line >>= 1) {
  if (rate > 48000)
   value = (channels * bits_per_sample *
     (rate / 48000)) / sdo_line;
  else
   value = (channels * bits_per_sample) / sdo_line;

  if (value >= 8)
   break;
 }


 return sdo_line >> 1;
}
