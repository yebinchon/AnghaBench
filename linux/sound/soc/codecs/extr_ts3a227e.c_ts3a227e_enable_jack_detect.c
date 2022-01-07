
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts3a227e {struct snd_soc_jack* jack; } ;
struct snd_soc_jack {int jack; } ;
struct snd_soc_component {int dummy; } ;


 int KEY_PLAYPAUSE ;
 int KEY_VOICECOMMAND ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int snd_jack_set_key (int ,int ,int ) ;
 struct ts3a227e* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int ts3a227e_jack_report (struct ts3a227e*) ;

int ts3a227e_enable_jack_detect(struct snd_soc_component *component,
    struct snd_soc_jack *jack)
{
 struct ts3a227e *ts3a227e = snd_soc_component_get_drvdata(component);

 snd_jack_set_key(jack->jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_1, KEY_VOICECOMMAND);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEUP);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_3, KEY_VOLUMEDOWN);

 ts3a227e->jack = jack;
 ts3a227e_jack_report(ts3a227e);

 return 0;
}
