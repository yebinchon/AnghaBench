
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int sample_bits; int dma_addr; } ;
struct intel8x0 {scalar_t__ device_type; } ;
struct ichdev {scalar_t__ ichd; int pos_shift; int fragsize; int size; int physbuf; } ;


 scalar_t__ DEVICE_INTEL_ICH4 ;
 scalar_t__ ICHD_PCMOUT ;
 struct ichdev* get_ichdev (struct snd_pcm_substream*) ;
 int snd_intel8x0_setup_pcm_out (struct intel8x0*,struct snd_pcm_runtime*) ;
 int snd_intel8x0_setup_periods (struct intel8x0*,struct ichdev*) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct intel8x0* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_intel8x0_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct intel8x0 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct ichdev *ichdev = get_ichdev(substream);

 ichdev->physbuf = runtime->dma_addr;
 ichdev->size = snd_pcm_lib_buffer_bytes(substream);
 ichdev->fragsize = snd_pcm_lib_period_bytes(substream);
 if (ichdev->ichd == ICHD_PCMOUT) {
  snd_intel8x0_setup_pcm_out(chip, runtime);
  if (chip->device_type == DEVICE_INTEL_ICH4)
   ichdev->pos_shift = (runtime->sample_bits > 16) ? 2 : 1;
 }
 snd_intel8x0_setup_periods(chip, ichdev);
 return 0;
}
