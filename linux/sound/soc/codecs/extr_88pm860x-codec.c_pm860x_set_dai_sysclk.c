
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct pm860x_priv {int dir; } ;


 int EINVAL ;
 int PM860X_CLK_DIR_OUT ;
 struct pm860x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pm860x_set_dai_sysclk(struct snd_soc_dai *codec_dai,
     int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct pm860x_priv *pm860x = snd_soc_component_get_drvdata(component);

 if (dir == PM860X_CLK_DIR_OUT)
  pm860x->dir = PM860X_CLK_DIR_OUT;
 else
  return -EINVAL;

 return 0;
}
