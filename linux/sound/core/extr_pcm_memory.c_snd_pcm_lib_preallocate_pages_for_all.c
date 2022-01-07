
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_substream* next; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;


 int snd_pcm_lib_preallocate_pages (struct snd_pcm_substream*,int,void*,size_t,size_t) ;

void snd_pcm_lib_preallocate_pages_for_all(struct snd_pcm *pcm,
       int type, void *data,
       size_t size, size_t max)
{
 struct snd_pcm_substream *substream;
 int stream;

 for (stream = 0; stream < 2; stream++)
  for (substream = pcm->streams[stream].substream; substream; substream = substream->next)
   snd_pcm_lib_preallocate_pages(substream, type, data, size, max);
}
