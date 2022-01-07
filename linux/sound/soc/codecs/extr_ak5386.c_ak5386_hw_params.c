
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct ak5386_priv {int reset_gpio; } ;


 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 struct ak5386_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak5386_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct ak5386_priv *priv = snd_soc_component_get_drvdata(component);
 if (gpio_is_valid(priv->reset_gpio))
  gpio_set_value(priv->reset_gpio, 1);

 return 0;
}
