
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int buffer_size; int dma_area; } ;
struct aw2_pcm_device {int stream_number; struct aw2* chip; } ;
struct aw2 {int saa7146; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (struct snd_pcm_runtime*,unsigned int) ;
 unsigned int snd_aw2_saa7146_get_hw_ptr_capture (int *,int ,int ,int ) ;
 struct aw2_pcm_device* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_aw2_pcm_pointer_capture(struct snd_pcm_substream
           *substream)
{
 struct aw2_pcm_device *pcm_device = snd_pcm_substream_chip(substream);
 struct aw2 *chip = pcm_device->chip;
 unsigned int current_ptr;


 struct snd_pcm_runtime *runtime = substream->runtime;
 current_ptr =
  snd_aw2_saa7146_get_hw_ptr_capture(&chip->saa7146,
         pcm_device->stream_number,
         runtime->dma_area,
         runtime->buffer_size);

 return bytes_to_frames(substream->runtime, current_ptr);
}
