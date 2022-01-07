
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int dma_addr; int format; int rate; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ buf; int addr; int count; } ;
struct TYPE_3__ {int stereo; int format; int rate; scalar_t__ playing; scalar_t__ capturing; } ;
struct snd_harmony {TYPE_2__ pbuf; TYPE_1__ st; } ;


 int EBUSY ;
 int HARMONY_SS_MONO ;
 int HARMONY_SS_STEREO ;
 int harmony_set_control (struct snd_harmony*) ;
 int snd_harmony_rate_bits (int ) ;
 int snd_harmony_set_data_format (struct snd_harmony*,int ,int ) ;
 scalar_t__ snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_harmony* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_harmony_playback_prepare(struct snd_pcm_substream *ss)
{
 struct snd_harmony *h = snd_pcm_substream_chip(ss);
 struct snd_pcm_runtime *rt = ss->runtime;

 if (h->st.capturing)
  return -EBUSY;

 h->pbuf.size = snd_pcm_lib_buffer_bytes(ss);
 h->pbuf.count = snd_pcm_lib_period_bytes(ss);
 if (h->pbuf.buf >= h->pbuf.size)
  h->pbuf.buf = 0;
 h->st.playing = 0;

 h->st.rate = snd_harmony_rate_bits(rt->rate);
 h->st.format = snd_harmony_set_data_format(h, rt->format, 0);

 if (rt->channels == 2)
  h->st.stereo = HARMONY_SS_STEREO;
 else
  h->st.stereo = HARMONY_SS_MONO;

 harmony_set_control(h);

 h->pbuf.addr = rt->dma_addr;

 return 0;
}
