
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs5535audio_dma {int pcm_open_flag; int buf_bytes; int buf_addr; } ;
struct cs5535audio {int dummy; } ;
struct TYPE_2__ {int dma_addr; struct cs5535audio_dma* private_data; } ;


 int cs5535audio_build_dma_packets (struct cs5535audio*,struct cs5535audio_dma*,struct snd_pcm_substream*,int ,int ) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 int params_periods (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct cs5535audio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cs5535audio_hw_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *hw_params)
{
 struct cs5535audio *cs5535au = snd_pcm_substream_chip(substream);
 struct cs5535audio_dma *dma = substream->runtime->private_data;
 int err;

 err = snd_pcm_lib_malloc_pages(substream,
     params_buffer_bytes(hw_params));
 if (err < 0)
  return err;
 dma->buf_addr = substream->runtime->dma_addr;
 dma->buf_bytes = params_buffer_bytes(hw_params);

 err = cs5535audio_build_dma_packets(cs5535au, dma, substream,
         params_periods(hw_params),
         params_period_bytes(hw_params));
 if (!err)
  dma->pcm_open_flag = 1;

 return err;
}
