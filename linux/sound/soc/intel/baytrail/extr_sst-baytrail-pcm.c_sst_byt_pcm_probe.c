
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_pdata {int dsp; } ;
struct sst_byt_priv_data {TYPE_1__* pcm; int byt; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int work; int mutex; } ;


 int BYT_PCM_COUNT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 struct sst_pdata* dev_get_platdata (int ) ;
 struct sst_byt_priv_data* devm_kzalloc (int ,int,int ) ;
 int mutex_init (int *) ;
 int snd_soc_component_set_drvdata (struct snd_soc_component*,struct sst_byt_priv_data*) ;
 int sst_byt_pcm_work ;

__attribute__((used)) static int sst_byt_pcm_probe(struct snd_soc_component *component)
{
 struct sst_pdata *plat_data = dev_get_platdata(component->dev);
 struct sst_byt_priv_data *priv_data;
 int i;

 if (!plat_data)
  return -ENODEV;

 priv_data = devm_kzalloc(component->dev, sizeof(*priv_data),
     GFP_KERNEL);
 if (!priv_data)
  return -ENOMEM;
 priv_data->byt = plat_data->dsp;
 snd_soc_component_set_drvdata(component, priv_data);

 for (i = 0; i < BYT_PCM_COUNT; i++) {
  mutex_init(&priv_data->pcm[i].mutex);
  INIT_WORK(&priv_data->pcm[i].work, sst_byt_pcm_work);
 }

 return 0;
}
