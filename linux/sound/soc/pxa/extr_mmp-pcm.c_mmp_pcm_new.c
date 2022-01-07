
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_pcm* pcm; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;


 int mmp_pcm_free_dma_buffers (struct snd_pcm*) ;
 int mmp_pcm_preallocate_dma_buffer (struct snd_pcm_substream*,int) ;

__attribute__((used)) static int mmp_pcm_new(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_pcm_substream *substream;
 struct snd_pcm *pcm = rtd->pcm;
 int ret = 0, stream;

 for (stream = 0; stream < 2; stream++) {
  substream = pcm->streams[stream].substream;

  ret = mmp_pcm_preallocate_dma_buffer(substream, stream);
  if (ret)
   goto err;
 }

 return 0;

err:
 mmp_pcm_free_dma_buffers(pcm);
 return ret;
}
