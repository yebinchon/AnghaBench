
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct aic31xx_priv {int regmap; struct snd_soc_jack* jack; } ;


 int AIC31XX_HSDETECT ;
 int AIC31XX_HSD_ENABLE ;
 int regmap_write (int ,int ,int ) ;
 struct aic31xx_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int aic31xx_set_jack(struct snd_soc_component *component,
       struct snd_soc_jack *jack, void *data)
{
 struct aic31xx_priv *aic31xx = snd_soc_component_get_drvdata(component);

 aic31xx->jack = jack;


 regmap_write(aic31xx->regmap, AIC31XX_HSDETECT,
       jack ? AIC31XX_HSD_ENABLE : 0);

 return 0;
}
