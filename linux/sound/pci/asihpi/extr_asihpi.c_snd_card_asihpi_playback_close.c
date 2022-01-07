
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_card_asihpi_pcm* private_data; } ;
struct snd_card_asihpi_pcm {int h_stream; } ;


 int hpi_handle_error (int ) ;
 int hpi_outstream_close (int ) ;
 int snd_printdd (char*) ;

__attribute__((used)) static int snd_card_asihpi_playback_close(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_card_asihpi_pcm *dpcm = runtime->private_data;

 hpi_handle_error(hpi_outstream_close(dpcm->h_stream));
 snd_printdd("playback close\n");

 return 0;
}
