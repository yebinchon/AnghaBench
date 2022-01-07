
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; int dma_addr; int format; } ;
struct snd_ice1712 {int ac97; int reg_lock; int capture_con_virt_addr; } ;


 int AC97_PCM_LR_ADC_RATE ;
 int CONCAP_ADDR ;
 int CONCAP_COUNT ;
 int ICE1712_IREG_CAP_COUNT_HI ;
 int ICE1712_IREG_CAP_COUNT_LO ;
 int ICE1712_IREG_CAP_CTRL ;
 int ICEREG (struct snd_ice1712*,int ) ;
 int outl (int ,int ) ;
 int outw (int,int ) ;
 int snd_ac97_set_rate (int ,int ,int ) ;
 int snd_ice1712_write (struct snd_ice1712*,int ,int) ;
 int snd_pcm_format_width (int ) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ice1712_capture_prepare(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 u32 period_size, buf_size;
 u8 tmp;

 period_size = (snd_pcm_lib_period_bytes(substream) >> 2) - 1;
 buf_size = snd_pcm_lib_buffer_bytes(substream) - 1;
 tmp = 0x06;
 if (snd_pcm_format_width(runtime->format) == 16)
  tmp &= ~0x04;
 if (runtime->channels == 2)
  tmp &= ~0x02;
 spin_lock_irq(&ice->reg_lock);
 outl(ice->capture_con_virt_addr = runtime->dma_addr, ICEREG(ice, CONCAP_ADDR));
 outw(buf_size, ICEREG(ice, CONCAP_COUNT));
 snd_ice1712_write(ice, ICE1712_IREG_CAP_COUNT_HI, period_size >> 8);
 snd_ice1712_write(ice, ICE1712_IREG_CAP_COUNT_LO, period_size & 0xff);
 snd_ice1712_write(ice, ICE1712_IREG_CAP_CTRL, tmp);
 spin_unlock_irq(&ice->reg_lock);
 snd_ac97_set_rate(ice->ac97, AC97_PCM_LR_ADC_RATE, runtime->rate);
 return 0;
}
