
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int au1x_pcm_dbdma_free (int ) ;
 int to_dmadata (struct snd_pcm_substream*) ;

__attribute__((used)) static int au1xpsc_pcm_close(struct snd_pcm_substream *substream)
{
 au1x_pcm_dbdma_free(to_dmadata(substream));
 return 0;
}
