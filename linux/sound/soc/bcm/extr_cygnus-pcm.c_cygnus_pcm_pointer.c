
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; int runtime; } ;
struct ringbuf_regs {scalar_t__ baseaddr; scalar_t__ wraddr; scalar_t__ rdaddr; } ;
struct cygnus_aio_port {TYPE_1__* cygaud; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {scalar_t__ audio; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int bytes_to_frames (int ,unsigned int) ;
 struct cygnus_aio_port* cygnus_dai_get_dma_data (struct snd_pcm_substream*) ;
 struct ringbuf_regs* get_ringbuf (struct snd_pcm_substream*) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static snd_pcm_uframes_t cygnus_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct cygnus_aio_port *aio;
 unsigned int res = 0, cur = 0, base = 0;
 struct ringbuf_regs *p_rbuf = ((void*)0);

 aio = cygnus_dai_get_dma_data(substream);





 p_rbuf = get_ringbuf(substream);
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  cur = readl(aio->cygaud->audio + p_rbuf->rdaddr);
 else
  cur = readl(aio->cygaud->audio + p_rbuf->wraddr);

 base = readl(aio->cygaud->audio + p_rbuf->baseaddr);





 res = (cur & 0x7fffffff) - (base & 0x7fffffff);

 return bytes_to_frames(substream->runtime, res);
}
