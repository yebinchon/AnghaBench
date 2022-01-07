
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct cs43130_private {int clk_mutex; int regmap; int clk_req; } ;


 int CS43130_MCLK_SRC_RCO ;
 int cs43130_change_clksrc (struct snd_soc_component*,int ) ;
 int cs43130_pcm_dsd_mix (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cs43130_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs43130_hw_free(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs43130_private *cs43130 = snd_soc_component_get_drvdata(component);

 mutex_lock(&cs43130->clk_mutex);
 cs43130->clk_req--;
 if (!cs43130->clk_req) {

  cs43130_change_clksrc(component, CS43130_MCLK_SRC_RCO);
  cs43130_pcm_dsd_mix(0, cs43130->regmap);
 }
 mutex_unlock(&cs43130->clk_mutex);

 return 0;
}
