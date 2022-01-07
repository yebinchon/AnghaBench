
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts3a227e {int buttons_held; int jack; scalar_t__ mic_present; scalar_t__ plugged; } ;


 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int TS3A227E_JACK_MASK ;
 unsigned int TS3A227E_NUM_BUTTONS ;
 int snd_soc_jack_report (int ,int,int ) ;
 int* ts3a227e_buttons ;

__attribute__((used)) static void ts3a227e_jack_report(struct ts3a227e *ts3a227e)
{
 unsigned int i;
 int report = 0;

 if (!ts3a227e->jack)
  return;

 if (ts3a227e->plugged)
  report = SND_JACK_HEADPHONE;
 if (ts3a227e->mic_present)
  report |= SND_JACK_MICROPHONE;
 for (i = 0; i < TS3A227E_NUM_BUTTONS; i++) {
  if (ts3a227e->buttons_held & (1 << i))
   report |= ts3a227e_buttons[i];
 }
 snd_soc_jack_report(ts3a227e->jack, report, TS3A227E_JACK_MASK);
}
