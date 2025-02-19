
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dev; } ;
typedef enum da7218_hpldet_jack_rate { ____Placeholder_da7218_hpldet_jack_rate } da7218_hpldet_jack_rate ;


 int DA7218_HPLDET_JACK_RATE_10US ;
 int DA7218_HPLDET_JACK_RATE_160US ;
 int DA7218_HPLDET_JACK_RATE_20US ;
 int DA7218_HPLDET_JACK_RATE_320US ;
 int DA7218_HPLDET_JACK_RATE_40US ;
 int DA7218_HPLDET_JACK_RATE_5US ;
 int DA7218_HPLDET_JACK_RATE_640US ;
 int DA7218_HPLDET_JACK_RATE_80US ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static enum da7218_hpldet_jack_rate
 da7218_of_jack_rate(struct snd_soc_component *component, u32 val)
{
 switch (val) {
 case 5:
  return DA7218_HPLDET_JACK_RATE_5US;
 case 10:
  return DA7218_HPLDET_JACK_RATE_10US;
 case 20:
  return DA7218_HPLDET_JACK_RATE_20US;
 case 40:
  return DA7218_HPLDET_JACK_RATE_40US;
 case 80:
  return DA7218_HPLDET_JACK_RATE_80US;
 case 160:
  return DA7218_HPLDET_JACK_RATE_160US;
 case 320:
  return DA7218_HPLDET_JACK_RATE_320US;
 case 640:
  return DA7218_HPLDET_JACK_RATE_640US;
 default:
  dev_warn(component->dev, "Invalid jack detect rate");
  return DA7218_HPLDET_JACK_RATE_40US;
 }
}
