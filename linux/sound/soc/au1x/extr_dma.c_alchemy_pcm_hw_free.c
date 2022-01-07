
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct audio_stream {int dummy; } ;


 int au1000_release_dma_link (struct audio_stream*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct audio_stream* ss_to_as (struct snd_pcm_substream*) ;

__attribute__((used)) static int alchemy_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct audio_stream *stream = ss_to_as(substream);
 au1000_release_dma_link(stream);
 return snd_pcm_lib_free_pages(substream);
}
