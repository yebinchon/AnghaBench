
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dev; } ;
typedef enum da7218_hpldet_jack_thr { ____Placeholder_da7218_hpldet_jack_thr } da7218_hpldet_jack_thr ;


 int DA7218_HPLDET_JACK_THR_84PCT ;
 int DA7218_HPLDET_JACK_THR_88PCT ;
 int DA7218_HPLDET_JACK_THR_92PCT ;
 int DA7218_HPLDET_JACK_THR_96PCT ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static enum da7218_hpldet_jack_thr
 da7218_of_jack_thr(struct snd_soc_component *component, u32 val)
{
 switch (val) {
 case 84:
  return DA7218_HPLDET_JACK_THR_84PCT;
 case 88:
  return DA7218_HPLDET_JACK_THR_88PCT;
 case 92:
  return DA7218_HPLDET_JACK_THR_92PCT;
 case 96:
  return DA7218_HPLDET_JACK_THR_96PCT;
 default:
  dev_warn(component->dev, "Invalid jack threshold level");
  return DA7218_HPLDET_JACK_THR_84PCT;
 }
}
