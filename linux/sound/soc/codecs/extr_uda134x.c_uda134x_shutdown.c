
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uda134x_priv {struct snd_pcm_substream* slave_substream; struct snd_pcm_substream* master_substream; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 struct uda134x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void uda134x_shutdown(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct uda134x_priv *uda134x = snd_soc_component_get_drvdata(component);

 if (uda134x->master_substream == substream)
  uda134x->master_substream = uda134x->slave_substream;

 uda134x->slave_substream = ((void*)0);
}
