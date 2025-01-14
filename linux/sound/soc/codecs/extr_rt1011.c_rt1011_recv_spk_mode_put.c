
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct rt1011_priv {scalar_t__ recv_spk_mode; } ;


 int RT1011_CLASSD_INTERNAL_SET_1 ;
 int RT1011_CLASSD_INTERNAL_SET_3 ;
 int RT1011_RECV_MODE ;
 int RT1011_RECV_MODE_SPK_MASK ;
 int RT1011_REG_GAIN_CLASSD_RI_410K ;
 int RT1011_REG_GAIN_CLASSD_RI_72P5K ;
 int RT1011_REG_GAIN_CLASSD_RI_SPK_MASK ;
 int RT1011_SPK_MODE ;
 scalar_t__ SND_SOC_BIAS_OFF ;
 scalar_t__ snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct rt1011_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int rt1011_recv_spk_mode_put(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
  snd_soc_kcontrol_component(kcontrol);
 struct rt1011_priv *rt1011 =
  snd_soc_component_get_drvdata(component);

 if (ucontrol->value.integer.value[0] == rt1011->recv_spk_mode)
  return 0;

 if (snd_soc_component_get_bias_level(component) == SND_SOC_BIAS_OFF) {
  rt1011->recv_spk_mode = ucontrol->value.integer.value[0];

  if (rt1011->recv_spk_mode) {


   snd_soc_component_update_bits(component,
    RT1011_CLASSD_INTERNAL_SET_3,
    RT1011_REG_GAIN_CLASSD_RI_SPK_MASK,
    RT1011_REG_GAIN_CLASSD_RI_410K);
   snd_soc_component_update_bits(component,
    RT1011_CLASSD_INTERNAL_SET_1,
    RT1011_RECV_MODE_SPK_MASK,
    RT1011_RECV_MODE);
  } else {

   snd_soc_component_update_bits(component,
    RT1011_CLASSD_INTERNAL_SET_3,
    RT1011_REG_GAIN_CLASSD_RI_SPK_MASK,
    RT1011_REG_GAIN_CLASSD_RI_72P5K);
   snd_soc_component_update_bits(component,
    RT1011_CLASSD_INTERNAL_SET_1,
    RT1011_RECV_MODE_SPK_MASK,
    RT1011_SPK_MODE);
  }
 }

 return 0;
}
