
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct da7219_priv {int pll_lock; } ;


 int da7219_set_pll (struct snd_soc_component*,int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int da7219_set_dai_pll(struct snd_soc_dai *codec_dai, int pll_id,
         int source, unsigned int fref, unsigned int fout)
{
 struct snd_soc_component *component = codec_dai->component;
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);
 int ret;

 mutex_lock(&da7219->pll_lock);
 ret = da7219_set_pll(component, source, fout);
 mutex_unlock(&da7219->pll_lock);

 return ret;
}
