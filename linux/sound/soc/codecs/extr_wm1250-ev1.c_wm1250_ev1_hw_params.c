
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm1250_priv {TYPE_1__* gpios; } ;
struct snd_soc_dai {int component; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int gpio; } ;


 int EINVAL ;
 size_t WM1250_EV1_GPIO_CLK_SEL0 ;
 size_t WM1250_EV1_GPIO_CLK_SEL1 ;
 int gpio_set_value (int ,int) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct wm1250_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int wm1250_ev1_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct wm1250_priv *wm1250 = snd_soc_component_get_drvdata(dai->component);

 switch (params_rate(params)) {
 case 8000:
  gpio_set_value(wm1250->gpios[WM1250_EV1_GPIO_CLK_SEL0].gpio,
          1);
  gpio_set_value(wm1250->gpios[WM1250_EV1_GPIO_CLK_SEL1].gpio,
          1);
  break;
 case 16000:
  gpio_set_value(wm1250->gpios[WM1250_EV1_GPIO_CLK_SEL0].gpio,
          0);
  gpio_set_value(wm1250->gpios[WM1250_EV1_GPIO_CLK_SEL1].gpio,
          1);
  break;
 case 32000:
  gpio_set_value(wm1250->gpios[WM1250_EV1_GPIO_CLK_SEL0].gpio,
          1);
  gpio_set_value(wm1250->gpios[WM1250_EV1_GPIO_CLK_SEL1].gpio,
          0);
  break;
 case 64000:
  gpio_set_value(wm1250->gpios[WM1250_EV1_GPIO_CLK_SEL0].gpio,
          0);
  gpio_set_value(wm1250->gpios[WM1250_EV1_GPIO_CLK_SEL1].gpio,
          0);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
