
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_4__ {scalar_t__ nr_ch; int * substream; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_3__ {int * private_data; } ;



__attribute__((used)) static int snd_vortex_pcm_close(struct snd_pcm_substream *substream)
{

 stream_t *stream = (stream_t *) substream->runtime->private_data;


 if (stream != ((void*)0)) {
  stream->substream = ((void*)0);
  stream->nr_ch = 0;
 }
 substream->runtime->private_data = ((void*)0);
 return 0;
}
