
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ number; struct snd_pcm_substream* next; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;


 int SNDRV_DMA_TYPE_DEV_SG ;
 int snd_pcm_lib_preallocate_pages (struct snd_pcm_substream*,int ,struct device*,int,int) ;

__attribute__((used)) static int snd_echo_preallocate_pages(struct snd_pcm *pcm, struct device *dev)
{
 struct snd_pcm_substream *ss;
 int stream;

 for (stream = 0; stream < 2; stream++)
  for (ss = pcm->streams[stream].substream; ss; ss = ss->next)
   snd_pcm_lib_preallocate_pages(ss, SNDRV_DMA_TYPE_DEV_SG,
            dev,
            ss->number ? 0 : 128<<10,
            256<<10);

 return 0;
}
