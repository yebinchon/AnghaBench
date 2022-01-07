
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADSET ;
 int headset_jack ;
 int headset_jack_pins ;
 int snd_soc_card_jack_new (int *,char*,int,int *,int ,int ) ;
 int snd_soc_card_rk ;
 int ts3a227e_enable_jack_detect (struct snd_soc_component*,int *) ;

__attribute__((used)) static int rk_98090_headset_init(struct snd_soc_component *component)
{
 int ret;


 ret = snd_soc_card_jack_new(&snd_soc_card_rk, "Headset Jack",
        SND_JACK_HEADSET |
        SND_JACK_BTN_0 | SND_JACK_BTN_1 |
        SND_JACK_BTN_2 | SND_JACK_BTN_3,
        &headset_jack,
        headset_jack_pins,
        ARRAY_SIZE(headset_jack_pins));
 if (ret)
  return ret;

 ret = ts3a227e_enable_jack_detect(component, &headset_jack);

 return ret;
}
