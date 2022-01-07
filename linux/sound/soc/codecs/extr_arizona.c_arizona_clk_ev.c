
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int reg; int dapm; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {int dummy; } ;
struct arizona {int * mclk; int regmap; } ;
struct TYPE_2__ {int parent; } ;




 int ARIZONA_MCLK1 ;
 int ARIZONA_MCLK2 ;
 unsigned int ARIZONA_SYSCLK_SRC_MASK ;
 unsigned int ARIZONA_SYSCLK_SRC_SHIFT ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct arizona* dev_get_drvdata (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

int arizona_clk_ev(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct arizona *arizona = dev_get_drvdata(component->dev->parent);
 unsigned int val;
 int clk_idx;
 int ret;

 ret = regmap_read(arizona->regmap, w->reg, &val);
 if (ret) {
  dev_err(component->dev, "Failed to check clock source: %d\n", ret);
  return ret;
 }

 val = (val & ARIZONA_SYSCLK_SRC_MASK) >> ARIZONA_SYSCLK_SRC_SHIFT;

 switch (val) {
 case 131:
  clk_idx = ARIZONA_MCLK1;
  break;
 case 130:
  clk_idx = ARIZONA_MCLK2;
  break;
 default:
  return 0;
 }

 switch (event) {
 case 128:
  return clk_prepare_enable(arizona->mclk[clk_idx]);
 case 129:
  clk_disable_unprepare(arizona->mclk[clk_idx]);
  return 0;
 default:
  return 0;
 }
}
