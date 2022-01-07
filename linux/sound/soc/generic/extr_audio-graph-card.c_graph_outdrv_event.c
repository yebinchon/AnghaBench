
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {int card; } ;
struct snd_kcontrol {int dummy; } ;
struct asoc_simple_priv {int pa_gpio; } ;


 int EINVAL ;


 int gpiod_set_value_cansleep (int ,int) ;
 struct asoc_simple_priv* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static int graph_outdrv_event(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *kcontrol,
         int event)
{
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct asoc_simple_priv *priv = snd_soc_card_get_drvdata(dapm->card);

 switch (event) {
 case 129:
  gpiod_set_value_cansleep(priv->pa_gpio, 1);
  break;
 case 128:
  gpiod_set_value_cansleep(priv->pa_gpio, 0);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
