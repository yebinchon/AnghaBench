
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u16 ;
struct snd_soc_component {int dummy; } ;
struct sgtl5000_priv {void** mute_state; } ;
 void* mute_output (struct snd_soc_component*,int const) ;
 int restore_output (struct snd_soc_component*,int const,void*) ;
 struct sgtl5000_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int vag_power_off (struct snd_soc_component*,int) ;
 int vag_power_on (struct snd_soc_component*,int) ;

__attribute__((used)) static int vag_and_mute_control(struct snd_soc_component *component,
     int event, int event_source)
{
 static const u16 mute_mask[] = {





  133,





  132,
  132
 };

 struct sgtl5000_priv *sgtl5000 =
  snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  sgtl5000->mute_state[event_source] =
   mute_output(component, mute_mask[event_source]);
  break;
 case 130:
  vag_power_on(component, event_source);
  restore_output(component, mute_mask[event_source],
          sgtl5000->mute_state[event_source]);
  break;
 case 129:
  sgtl5000->mute_state[event_source] =
   mute_output(component, mute_mask[event_source]);
  vag_power_off(component, event_source);
  break;
 case 131:
  restore_output(component, mute_mask[event_source],
          sgtl5000->mute_state[event_source]);
  break;
 default:
  break;
 }

 return 0;
}
