
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct gpio_desc {int dummy; } ;


 int SND_SOC_DAPM_EVENT_OFF (int) ;
 int gpiod_set_value (struct gpio_desc*,int ) ;
 struct gpio_desc* snd_soc_card_get_drvdata (int *) ;
 int snd_soc_smartq ;

__attribute__((used)) static int smartq_speaker_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *k,
    int event)
{
 struct gpio_desc *gpio = snd_soc_card_get_drvdata(&snd_soc_smartq);

 gpiod_set_value(gpio, SND_SOC_DAPM_EVENT_OFF(event));

 return 0;
}
