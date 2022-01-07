
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_card_asihpi_pcm* private_data; } ;
struct snd_card_asihpi_pcm {int pcm_buf_dma_ofs; int buffer_bytes; } ;
typedef int snd_pcm_uframes_t ;
typedef int name ;


 int bytes_to_frames (struct snd_pcm_runtime*,int) ;
 int snd_pcm_debug_name (struct snd_pcm_substream*,char*,int) ;
 int snd_printddd (char*,char*,int) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_card_asihpi_capture_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_card_asihpi_pcm *dpcm = runtime->private_data;
 char name[16];
 snd_pcm_debug_name(substream, name, sizeof(name));

 snd_printddd("%s, pointer=%d\n", name, dpcm->pcm_buf_dma_ofs);




 return bytes_to_frames(runtime, dpcm->pcm_buf_dma_ofs % dpcm->buffer_bytes);
}
