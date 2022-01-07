
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_priv {struct twl4030_codec_data* pdata; } ;
struct twl4030_codec_data {int hs_extmute_gpio; scalar_t__ hs_extmute; } ;
struct snd_soc_component {int dummy; } ;


 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 struct twl4030_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void twl4030_soc_remove(struct snd_soc_component *component)
{
 struct twl4030_priv *twl4030 = snd_soc_component_get_drvdata(component);
 struct twl4030_codec_data *pdata = twl4030->pdata;

 if (pdata && pdata->hs_extmute && gpio_is_valid(pdata->hs_extmute_gpio))
  gpio_free(pdata->hs_extmute_gpio);
}
