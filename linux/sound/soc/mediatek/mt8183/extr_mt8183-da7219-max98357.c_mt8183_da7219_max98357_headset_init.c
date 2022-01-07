
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADSET ;
 int da7219_aad_jack_det (struct snd_soc_component*,int *) ;
 int headset_jack ;
 int mt8183_da7219_max98357_card ;
 int snd_soc_card_jack_new (int *,char*,int,int *,int *,int ) ;

__attribute__((used)) static int
mt8183_da7219_max98357_headset_init(struct snd_soc_component *component)
{
 int ret;


 ret = snd_soc_card_jack_new(&mt8183_da7219_max98357_card,
        "Headset Jack",
        SND_JACK_HEADSET |
        SND_JACK_BTN_0 | SND_JACK_BTN_1 |
        SND_JACK_BTN_2 | SND_JACK_BTN_3,
        &headset_jack,
        ((void*)0), 0);
 if (ret)
  return ret;

 da7219_aad_jack_det(component, &headset_jack);

 return ret;
}
