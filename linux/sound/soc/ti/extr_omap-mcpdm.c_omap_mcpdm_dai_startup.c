
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int active; } ;
struct snd_pcm_substream {int dummy; } ;
struct omap_mcpdm {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_mcpdm_open_streams (struct omap_mcpdm*) ;
 struct omap_mcpdm* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int omap_mcpdm_dai_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct omap_mcpdm *mcpdm = snd_soc_dai_get_drvdata(dai);

 mutex_lock(&mcpdm->mutex);

 if (!dai->active)
  omap_mcpdm_open_streams(mcpdm);

 mutex_unlock(&mcpdm->mutex);

 return 0;
}
