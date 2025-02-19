
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; int dma_addr; int format; } ;
struct snd_ice1712 {int reg_lock; scalar_t__ ddma_port; } ;


 int ICE1712_DMA_AUTOINIT ;
 int ICE1712_DMA_MODE_WRITE ;
 int ICE1712_IREG_PBK_COUNT_HI ;
 int ICE1712_IREG_PBK_COUNT_LO ;
 int ICE1712_IREG_PBK_CTRL ;
 int ICE1712_IREG_PBK_LEFT ;
 int ICE1712_IREG_PBK_RATE_HI ;
 int ICE1712_IREG_PBK_RATE_LO ;
 int ICE1712_IREG_PBK_RATE_MID ;
 int ICE1712_IREG_PBK_RIGHT ;
 int outb (int,scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int snd_ice1712_write (struct snd_ice1712*,int ,int) ;
 int snd_pcm_format_width (int ) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ice1712_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 u32 period_size, buf_size, rate, tmp;

 period_size = (snd_pcm_lib_period_bytes(substream) >> 2) - 1;
 buf_size = snd_pcm_lib_buffer_bytes(substream) - 1;
 tmp = 0x0000;
 if (snd_pcm_format_width(runtime->format) == 16)
  tmp |= 0x10;
 if (runtime->channels == 2)
  tmp |= 0x08;
 rate = (runtime->rate * 8192) / 375;
 if (rate > 0x000fffff)
  rate = 0x000fffff;
 spin_lock_irq(&ice->reg_lock);
 outb(0, ice->ddma_port + 15);
 outb(ICE1712_DMA_MODE_WRITE | ICE1712_DMA_AUTOINIT, ice->ddma_port + 0x0b);
 outl(runtime->dma_addr, ice->ddma_port + 0);
 outw(buf_size, ice->ddma_port + 4);
 snd_ice1712_write(ice, ICE1712_IREG_PBK_RATE_LO, rate & 0xff);
 snd_ice1712_write(ice, ICE1712_IREG_PBK_RATE_MID, (rate >> 8) & 0xff);
 snd_ice1712_write(ice, ICE1712_IREG_PBK_RATE_HI, (rate >> 16) & 0xff);
 snd_ice1712_write(ice, ICE1712_IREG_PBK_CTRL, tmp);
 snd_ice1712_write(ice, ICE1712_IREG_PBK_COUNT_LO, period_size & 0xff);
 snd_ice1712_write(ice, ICE1712_IREG_PBK_COUNT_HI, period_size >> 8);
 snd_ice1712_write(ice, ICE1712_IREG_PBK_LEFT, 0);
 snd_ice1712_write(ice, ICE1712_IREG_PBK_RIGHT, 0);
 spin_unlock_irq(&ice->reg_lock);
 return 0;
}
