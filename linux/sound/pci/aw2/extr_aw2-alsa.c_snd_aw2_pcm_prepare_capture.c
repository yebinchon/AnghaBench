
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; } ;
struct aw2_pcm_device {int stream_number; struct aw2* chip; } ;
struct aw2 {int mtx; int saa7146; } ;
typedef int snd_aw2_saa7146_it_cb ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_aw2_saa7146_define_it_capture_callback (int ,int ,void*) ;
 int snd_aw2_saa7146_pcm_init_capture (int *,int ,int ,unsigned long,unsigned long) ;
 unsigned long snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned long snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 scalar_t__ snd_pcm_period_elapsed ;
 struct aw2_pcm_device* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_aw2_pcm_prepare_capture(struct snd_pcm_substream *substream)
{
 struct aw2_pcm_device *pcm_device = snd_pcm_substream_chip(substream);
 struct aw2 *chip = pcm_device->chip;
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned long period_size, buffer_size;

 mutex_lock(&chip->mtx);

 period_size = snd_pcm_lib_period_bytes(substream);
 buffer_size = snd_pcm_lib_buffer_bytes(substream);

 snd_aw2_saa7146_pcm_init_capture(&chip->saa7146,
      pcm_device->stream_number,
      runtime->dma_addr, period_size,
      buffer_size);


 snd_aw2_saa7146_define_it_capture_callback(pcm_device->stream_number,
         (snd_aw2_saa7146_it_cb)
         snd_pcm_period_elapsed,
         (void *)substream);

 mutex_unlock(&chip->mtx);

 return 0;
}
