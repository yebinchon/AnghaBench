
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; int dma_addr; } ;
struct intel8x0m {int dummy; } ;
struct ichdev {int ac97; int fragsize; int size; int physbuf; } ;


 int AC97_LINE1_LEVEL ;
 int AC97_LINE1_RATE ;
 struct ichdev* get_ichdev (struct snd_pcm_substream*) ;
 int snd_ac97_write (int ,int ,int ) ;
 int snd_intel8x0m_setup_periods (struct intel8x0m*,struct ichdev*) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct intel8x0m* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_intel8x0m_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct intel8x0m *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct ichdev *ichdev = get_ichdev(substream);

 ichdev->physbuf = runtime->dma_addr;
 ichdev->size = snd_pcm_lib_buffer_bytes(substream);
 ichdev->fragsize = snd_pcm_lib_period_bytes(substream);
 snd_ac97_write(ichdev->ac97, AC97_LINE1_RATE, runtime->rate);
 snd_ac97_write(ichdev->ac97, AC97_LINE1_LEVEL, 0);
 snd_intel8x0m_setup_periods(chip, ichdev);
 return 0;
}
