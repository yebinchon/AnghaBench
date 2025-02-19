
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct soc_enum {int shift_l; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cpcap_audio {int regmap; } ;


 unsigned int BIT (int ) ;
 int CPCAP_REG_RXCOA ;
 int CPCAP_REG_RXEPOA ;
 int CPCAP_REG_RXSDOA ;
 int regmap_update_bits (int ,int ,unsigned int,int) ;
 struct cpcap_audio* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_kcontrol_component (struct snd_kcontrol*) ;
 struct snd_soc_dapm_context* snd_soc_dapm_kcontrol_dapm (struct snd_kcontrol*) ;
 int snd_soc_dapm_mux_update_power (struct snd_soc_dapm_context*,struct snd_kcontrol*,unsigned int,struct soc_enum*,int *) ;

__attribute__((used)) static int cpcap_output_mux_put_enum(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_dapm_kcontrol_component(kcontrol);
 struct cpcap_audio *cpcap = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm =
  snd_soc_dapm_kcontrol_dapm(kcontrol);
 struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
 unsigned int muxval = ucontrol->value.enumerated.item[0];
 unsigned int mask = BIT(e->shift_l);
 u16 reg_voice = 0x00, reg_hifi = 0x00, reg_ext = 0x00;
 int err;

 switch (muxval) {
 case 1:
  reg_voice = mask;
  break;
 case 2:
  reg_hifi = mask;
  break;
 case 3:
  reg_ext = mask;
  break;
 default:
  break;
 }

 err = regmap_update_bits(cpcap->regmap, CPCAP_REG_RXCOA,
     mask, reg_voice);
 if (err)
  return err;
 err = regmap_update_bits(cpcap->regmap, CPCAP_REG_RXSDOA,
     mask, reg_hifi);
 if (err)
  return err;
 err = regmap_update_bits(cpcap->regmap, CPCAP_REG_RXEPOA,
     mask, reg_ext);
 if (err)
  return err;

 snd_soc_dapm_mux_update_power(dapm, kcontrol, muxval, e, ((void*)0));

 return 0;
}
