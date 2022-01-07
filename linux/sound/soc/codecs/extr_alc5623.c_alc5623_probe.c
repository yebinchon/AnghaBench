
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct alc5623_priv {int id; scalar_t__ jack_det_ctrl; scalar_t__ add_ctrl; } ;


 int ALC5623_ADD_CTRL_REG ;
 int ALC5623_JACK_DET_CTRL ;
 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int alc5621_vol_snd_controls ;
 int alc5622_vol_snd_controls ;
 int alc5623_dapm_amp_widgets ;
 int alc5623_dapm_widgets ;
 int alc5623_reset (struct snd_soc_component*) ;
 int alc5623_snd_controls ;
 int alc5623_vol_snd_controls ;
 int intercon ;
 int intercon_amp_spk ;
 int intercon_spk ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct alc5623_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,scalar_t__) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int alc5623_probe(struct snd_soc_component *component)
{
 struct alc5623_priv *alc5623 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 alc5623_reset(component);

 if (alc5623->add_ctrl) {
  snd_soc_component_write(component, ALC5623_ADD_CTRL_REG,
    alc5623->add_ctrl);
 }

 if (alc5623->jack_det_ctrl) {
  snd_soc_component_write(component, ALC5623_JACK_DET_CTRL,
    alc5623->jack_det_ctrl);
 }

 switch (alc5623->id) {
 case 0x21:
  snd_soc_add_component_controls(component, alc5621_vol_snd_controls,
   ARRAY_SIZE(alc5621_vol_snd_controls));
  break;
 case 0x22:
  snd_soc_add_component_controls(component, alc5622_vol_snd_controls,
   ARRAY_SIZE(alc5622_vol_snd_controls));
  break;
 case 0x23:
  snd_soc_add_component_controls(component, alc5623_vol_snd_controls,
   ARRAY_SIZE(alc5623_vol_snd_controls));
  break;
 default:
  return -EINVAL;
 }

 snd_soc_add_component_controls(component, alc5623_snd_controls,
   ARRAY_SIZE(alc5623_snd_controls));

 snd_soc_dapm_new_controls(dapm, alc5623_dapm_widgets,
     ARRAY_SIZE(alc5623_dapm_widgets));


 snd_soc_dapm_add_routes(dapm, intercon, ARRAY_SIZE(intercon));

 switch (alc5623->id) {
 case 0x21:
 case 0x22:
  snd_soc_dapm_new_controls(dapm, alc5623_dapm_amp_widgets,
     ARRAY_SIZE(alc5623_dapm_amp_widgets));
  snd_soc_dapm_add_routes(dapm, intercon_amp_spk,
     ARRAY_SIZE(intercon_amp_spk));
  break;
 case 0x23:
  snd_soc_dapm_add_routes(dapm, intercon_spk,
     ARRAY_SIZE(intercon_spk));
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
