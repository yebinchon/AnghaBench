
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm1250_priv {TYPE_1__* gpios; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_2__ {int gpio; } ;






 size_t WM1250_EV1_GPIO_CLK_ENA ;
 struct wm1250_priv* dev_get_drvdata (int ) ;
 int gpio_set_value_cansleep (int,int) ;

__attribute__((used)) static int wm1250_ev1_set_bias_level(struct snd_soc_component *component,
         enum snd_soc_bias_level level)
{
 struct wm1250_priv *wm1250 = dev_get_drvdata(component->dev);
 int ena;

 if (wm1250)
  ena = wm1250->gpios[WM1250_EV1_GPIO_CLK_ENA].gpio;
 else
  ena = -1;

 switch (level) {
 case 130:
  break;

 case 129:
  break;

 case 128:
  if (ena >= 0)
   gpio_set_value_cansleep(ena, 1);
  break;

 case 131:
  if (ena >= 0)
   gpio_set_value_cansleep(ena, 0);
  break;
 }

 return 0;
}
