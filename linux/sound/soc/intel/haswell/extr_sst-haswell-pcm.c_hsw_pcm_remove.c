
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_component {int dev; } ;
struct hsw_priv_data {int ** dmab; } ;
struct TYPE_5__ {scalar_t__ channels_min; } ;
struct TYPE_6__ {scalar_t__ channels_min; } ;
struct TYPE_7__ {TYPE_1__ capture; TYPE_2__ playback; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 TYPE_3__* hsw_dais ;
 int hsw_pcm_free_modules (struct hsw_priv_data*) ;
 int pm_runtime_disable (int ) ;
 int snd_dma_free_pages (int *) ;
 struct hsw_priv_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void hsw_pcm_remove(struct snd_soc_component *component)
{
 struct hsw_priv_data *priv_data =
  snd_soc_component_get_drvdata(component);
 int i;

 pm_runtime_disable(component->dev);
 hsw_pcm_free_modules(priv_data);

 for (i = 0; i < ARRAY_SIZE(hsw_dais); i++) {
  if (hsw_dais[i].playback.channels_min)
   snd_dma_free_pages(&priv_data->dmab[i][0]);
  if (hsw_dais[i].capture.channels_min)
   snd_dma_free_pages(&priv_data->dmab[i][1]);
 }
}
