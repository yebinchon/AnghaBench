
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int JACK_DETECT_COUNT ;
 int JACK_DETECT_MAXCOUNT ;
 int JACK_SETTLE_TIME ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_HEADSET ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int msleep (int ) ;
 int rt5651_clear_micbias1_ovcd (struct snd_soc_component*) ;
 int rt5651_jack_inserted (struct snd_soc_component*) ;
 scalar_t__ rt5651_micbias1_ovcd (struct snd_soc_component*) ;

__attribute__((used)) static int rt5651_detect_headset(struct snd_soc_component *component)
{
 int i, headset_count = 0, headphone_count = 0;
 for (i = 0; i < JACK_DETECT_MAXCOUNT; i++) {

  rt5651_clear_micbias1_ovcd(component);

  msleep(JACK_SETTLE_TIME);


  if (!rt5651_jack_inserted(component))
   return 0;

  if (rt5651_micbias1_ovcd(component)) {





   dev_dbg(component->dev, "mic-gnd shorted\n");
   headset_count = 0;
   headphone_count++;
   if (headphone_count == JACK_DETECT_COUNT)
    return SND_JACK_HEADPHONE;
  } else {
   dev_dbg(component->dev, "mic-gnd open\n");
   headphone_count = 0;
   headset_count++;
   if (headset_count == JACK_DETECT_COUNT)
    return SND_JACK_HEADSET;
  }
 }

 dev_err(component->dev, "Error detecting headset vs headphones, bad contact?, assuming headphones\n");
 return SND_JACK_HEADPHONE;
}
