
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int rate; int channels; int format; int dma_addr; } ;
struct snd_ad1816a {unsigned int c_dma_size; int clock_freq; int lock; int dma2; } ;


 int AD1816A_CAPTURE_BASE_COUNT ;
 int AD1816A_CAPTURE_CONFIG ;
 int AD1816A_CAPTURE_ENABLE ;
 int AD1816A_CAPTURE_PIO ;
 int AD1816A_CAPTURE_SAMPLE_RATE ;
 int AD1816A_FMT_ALL ;
 int AD1816A_FMT_STEREO ;
 int DMA_AUTOINIT ;
 int DMA_MODE_READ ;
 int snd_ad1816a_get_format (struct snd_ad1816a*,int ,int ) ;
 int snd_ad1816a_out_mask (struct snd_ad1816a*,int ,int,int) ;
 int snd_ad1816a_write (struct snd_ad1816a*,int ,int) ;
 int snd_dma_program (int ,int ,unsigned int,int) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_ad1816a* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_ad1816a_capture_prepare(struct snd_pcm_substream *substream)
{
 struct snd_ad1816a *chip = snd_pcm_substream_chip(substream);
 unsigned long flags;
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned int size, rate;

 spin_lock_irqsave(&chip->lock, flags);

 chip->c_dma_size = size = snd_pcm_lib_buffer_bytes(substream);
 snd_ad1816a_out_mask(chip, AD1816A_CAPTURE_CONFIG,
  AD1816A_CAPTURE_ENABLE | AD1816A_CAPTURE_PIO, 0x00);

 snd_dma_program(chip->dma2, runtime->dma_addr, size,
   DMA_MODE_READ | DMA_AUTOINIT);

 rate = runtime->rate;
 if (chip->clock_freq)
  rate = (rate * 33000) / chip->clock_freq;
 snd_ad1816a_write(chip, AD1816A_CAPTURE_SAMPLE_RATE, rate);
 snd_ad1816a_out_mask(chip, AD1816A_CAPTURE_CONFIG,
  AD1816A_FMT_ALL | AD1816A_FMT_STEREO,
  snd_ad1816a_get_format(chip, runtime->format,
   runtime->channels));

 snd_ad1816a_write(chip, AD1816A_CAPTURE_BASE_COUNT,
  snd_pcm_lib_period_bytes(substream) / 4 - 1);

 spin_unlock_irqrestore(&chip->lock, flags);
 return 0;
}
