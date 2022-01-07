
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;


 int dev_dbg (int ,char*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int sst_byt_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;

 dev_dbg(rtd->dev, "PCM: hw_free\n");
 snd_pcm_lib_free_pages(substream);

 return 0;
}
