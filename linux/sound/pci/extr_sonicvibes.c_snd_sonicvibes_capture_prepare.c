
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {unsigned int c_dma_size; int reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int dma_addr; int rate; int format; } ;


 int SV_IREG_DMA_C_LOWER ;
 int SV_IREG_DMA_C_UPPER ;
 int snd_pcm_format_width (int ) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct sonicvibes* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sonicvibes_out1 (struct sonicvibes*,int ,unsigned int) ;
 int snd_sonicvibes_set_adc_rate (struct sonicvibes*,int ) ;
 int snd_sonicvibes_setdmac (struct sonicvibes*,int ,unsigned int) ;
 int snd_sonicvibes_setfmt (struct sonicvibes*,int,unsigned char) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_sonicvibes_capture_prepare(struct snd_pcm_substream *substream)
{
 struct sonicvibes *sonic = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned char fmt = 0;
 unsigned int size = snd_pcm_lib_buffer_bytes(substream);
 unsigned int count = snd_pcm_lib_period_bytes(substream);

 sonic->c_dma_size = size;
 count >>= 1;
 count--;
 if (runtime->channels > 1)
  fmt |= 0x10;
 if (snd_pcm_format_width(runtime->format) == 16)
  fmt |= 0x20;
 snd_sonicvibes_setfmt(sonic, ~0x30, fmt);
 snd_sonicvibes_set_adc_rate(sonic, runtime->rate);
 spin_lock_irq(&sonic->reg_lock);
 snd_sonicvibes_setdmac(sonic, runtime->dma_addr, size);
 snd_sonicvibes_out1(sonic, SV_IREG_DMA_C_UPPER, count >> 8);
 snd_sonicvibes_out1(sonic, SV_IREG_DMA_C_LOWER, count);
 spin_unlock_irq(&sonic->reg_lock);
 return 0;
}
