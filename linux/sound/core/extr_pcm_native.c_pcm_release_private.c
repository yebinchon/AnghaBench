
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 scalar_t__ snd_pcm_stream_linked (struct snd_pcm_substream*) ;
 int snd_pcm_unlink (struct snd_pcm_substream*) ;

__attribute__((used)) static void pcm_release_private(struct snd_pcm_substream *substream)
{
 if (snd_pcm_stream_linked(substream))
  snd_pcm_unlink(substream);
}
