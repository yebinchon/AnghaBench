
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dev; } ;
typedef enum da7218_hpldet_jack_debounce { ____Placeholder_da7218_hpldet_jack_debounce } da7218_hpldet_jack_debounce ;


 int DA7218_HPLDET_JACK_DEBOUNCE_2 ;
 int DA7218_HPLDET_JACK_DEBOUNCE_3 ;
 int DA7218_HPLDET_JACK_DEBOUNCE_4 ;
 int DA7218_HPLDET_JACK_DEBOUNCE_OFF ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static enum da7218_hpldet_jack_debounce
 da7218_of_jack_debounce(struct snd_soc_component *component, u32 val)
{
 switch (val) {
 case 0:
  return DA7218_HPLDET_JACK_DEBOUNCE_OFF;
 case 2:
  return DA7218_HPLDET_JACK_DEBOUNCE_2;
 case 3:
  return DA7218_HPLDET_JACK_DEBOUNCE_3;
 case 4:
  return DA7218_HPLDET_JACK_DEBOUNCE_4;
 default:
  dev_warn(component->dev, "Invalid jack debounce");
  return DA7218_HPLDET_JACK_DEBOUNCE_2;
 }
}
