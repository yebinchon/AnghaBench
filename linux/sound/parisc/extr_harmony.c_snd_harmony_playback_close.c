
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_harmony {int * psubs; } ;


 struct snd_harmony* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_harmony_playback_close(struct snd_pcm_substream *ss)
{
 struct snd_harmony *h = snd_pcm_substream_chip(ss);
 h->psubs = ((void*)0);
 return 0;
}
