
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_enum {int dummy; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cpcap_audio {int regmap; } ;


 int BIT (int ) ;
 int CPCAP_BIT_MIC2_MUX ;
 int CPCAP_BIT_RX_L_ENCODE ;
 int CPCAP_REG_TXI ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct cpcap_audio* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_kcontrol_component (struct snd_kcontrol*) ;
 struct snd_soc_dapm_context* snd_soc_dapm_kcontrol_dapm (struct snd_kcontrol*) ;
 int snd_soc_dapm_mux_update_power (struct snd_soc_dapm_context*,struct snd_kcontrol*,unsigned int,struct soc_enum*,int *) ;

__attribute__((used)) static int cpcap_input_left_mux_put_enum(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_dapm_kcontrol_component(kcontrol);
 struct cpcap_audio *cpcap = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm =
  snd_soc_dapm_kcontrol_dapm(kcontrol);
 struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
 unsigned int muxval = ucontrol->value.enumerated.item[0];
 int regval = 0, mask;
 int err;

 mask = 0;
 mask |= BIT(CPCAP_BIT_MIC2_MUX);
 mask |= BIT(CPCAP_BIT_RX_L_ENCODE);

 switch (muxval) {
 case 1:
  regval = BIT(CPCAP_BIT_MIC2_MUX);
  break;
 case 2:
  regval = BIT(CPCAP_BIT_RX_L_ENCODE);
  break;
 default:
  break;
 }

 err = regmap_update_bits(cpcap->regmap, CPCAP_REG_TXI,
     mask, regval);
 if (err)
  return err;

 snd_soc_dapm_mux_update_power(dapm, kcontrol, muxval, e, ((void*)0));

 return 0;
}
