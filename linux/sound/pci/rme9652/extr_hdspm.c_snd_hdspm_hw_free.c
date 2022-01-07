
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; } ;
struct hdspm {int * capture_buffer; int * playback_buffer; } ;


 int HDSPM_MAX_CHANNELS ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_hdspm_enable_in (struct hdspm*,int,int ) ;
 int snd_hdspm_enable_out (struct hdspm*,int,int ) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct hdspm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_hdspm_hw_free(struct snd_pcm_substream *substream)
{
 int i;
 struct hdspm *hdspm = snd_pcm_substream_chip(substream);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {


  for (i = 0; i < HDSPM_MAX_CHANNELS; ++i)
   snd_hdspm_enable_out(hdspm, i, 0);

  hdspm->playback_buffer = ((void*)0);
 } else {
  for (i = 0; i < HDSPM_MAX_CHANNELS; ++i)
   snd_hdspm_enable_in(hdspm, i, 0);

  hdspm->capture_buffer = ((void*)0);
 }

 snd_pcm_lib_free_pages(substream);

 return 0;
}
