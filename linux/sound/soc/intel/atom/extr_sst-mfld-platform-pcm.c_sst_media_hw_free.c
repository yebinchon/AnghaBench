
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int sst_media_hw_free(struct snd_pcm_substream *substream,
  struct snd_soc_dai *dai)
{
 return snd_pcm_lib_free_pages(substream);
}
