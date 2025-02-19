
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct ringbuf_regs {scalar_t__ rdaddr; scalar_t__ wraddr; } ;
struct cygnus_aio_port {TYPE_1__* cygaud; } ;
struct TYPE_2__ {scalar_t__ audio; } ;


 int BIT (int) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 struct cygnus_aio_port* cygnus_dai_get_dma_data (struct snd_pcm_substream*) ;
 struct ringbuf_regs* get_ringbuf (struct snd_pcm_substream*) ;
 int readl (scalar_t__) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cygnus_pcm_period_elapsed(struct snd_pcm_substream *substream)
{
 struct cygnus_aio_port *aio;
 struct ringbuf_regs *p_rbuf = ((void*)0);
 u32 regval;

 aio = cygnus_dai_get_dma_data(substream);

 p_rbuf = get_ringbuf(substream);





 snd_pcm_period_elapsed(substream);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {

  regval = readl(aio->cygaud->audio + p_rbuf->rdaddr);
  regval = regval ^ BIT(31);
  writel(regval, aio->cygaud->audio + p_rbuf->wraddr);
 } else {

  regval = readl(aio->cygaud->audio + p_rbuf->wraddr);
  writel(regval, aio->cygaud->audio + p_rbuf->rdaddr);
 }
}
