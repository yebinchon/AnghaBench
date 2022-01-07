
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_mixer_control {int reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct mt6358_priv {unsigned int* ana_gain; int regmap; } ;


 size_t AUDIO_ANALOG_VOLUME_HPOUTL ;
 size_t AUDIO_ANALOG_VOLUME_HPOUTR ;
 size_t AUDIO_ANALOG_VOLUME_HSOUTL ;
 size_t AUDIO_ANALOG_VOLUME_HSOUTR ;
 size_t AUDIO_ANALOG_VOLUME_LINEOUTL ;
 size_t AUDIO_ANALOG_VOLUME_LINEOUTR ;
 size_t AUDIO_ANALOG_VOLUME_MICAMP1 ;
 size_t AUDIO_ANALOG_VOLUME_MICAMP2 ;





 unsigned int RG_AUDHPLGAIN_MASK ;
 unsigned int RG_AUDHPLGAIN_SFT ;
 unsigned int RG_AUDHPRGAIN_MASK ;
 unsigned int RG_AUDHPRGAIN_SFT ;
 unsigned int RG_AUDHSGAIN_MASK ;
 unsigned int RG_AUDHSGAIN_SFT ;
 unsigned int RG_AUDLOLGAIN_MASK ;
 unsigned int RG_AUDLOLGAIN_SFT ;
 unsigned int RG_AUDLORGAIN_MASK ;
 unsigned int RG_AUDLORGAIN_SFT ;
 unsigned int RG_AUDPREAMPLGAIN_MASK ;
 unsigned int RG_AUDPREAMPLGAIN_SFT ;
 unsigned int RG_AUDPREAMPRGAIN_MASK ;
 unsigned int RG_AUDPREAMPRGAIN_SFT ;
 int regmap_read (int ,int const,unsigned int*) ;
 struct mt6358_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int mt6358_put_volsw(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
   snd_soc_kcontrol_component(kcontrol);
 struct mt6358_priv *priv = snd_soc_component_get_drvdata(component);
 struct soc_mixer_control *mc =
   (struct soc_mixer_control *)kcontrol->private_value;
 unsigned int reg;
 int ret;

 ret = snd_soc_put_volsw(kcontrol, ucontrol);
 if (ret < 0)
  return ret;

 switch (mc->reg) {
 case 129:
  regmap_read(priv->regmap, 129, &reg);
  priv->ana_gain[AUDIO_ANALOG_VOLUME_HPOUTL] =
   (reg >> RG_AUDHPLGAIN_SFT) & RG_AUDHPLGAIN_MASK;
  priv->ana_gain[AUDIO_ANALOG_VOLUME_HPOUTR] =
   (reg >> RG_AUDHPRGAIN_SFT) & RG_AUDHPRGAIN_MASK;
  break;
 case 130:
  regmap_read(priv->regmap, 130, &reg);
  priv->ana_gain[AUDIO_ANALOG_VOLUME_LINEOUTL] =
   (reg >> RG_AUDLOLGAIN_SFT) & RG_AUDLOLGAIN_MASK;
  priv->ana_gain[AUDIO_ANALOG_VOLUME_LINEOUTR] =
   (reg >> RG_AUDLORGAIN_SFT) & RG_AUDLORGAIN_MASK;
  break;
 case 128:
  regmap_read(priv->regmap, 128, &reg);
  priv->ana_gain[AUDIO_ANALOG_VOLUME_HSOUTL] =
   (reg >> RG_AUDHSGAIN_SFT) & RG_AUDHSGAIN_MASK;
  priv->ana_gain[AUDIO_ANALOG_VOLUME_HSOUTR] =
   (reg >> RG_AUDHSGAIN_SFT) & RG_AUDHSGAIN_MASK;
  break;
 case 132:
 case 131:
  regmap_read(priv->regmap, 132, &reg);
  priv->ana_gain[AUDIO_ANALOG_VOLUME_MICAMP1] =
   (reg >> RG_AUDPREAMPLGAIN_SFT) & RG_AUDPREAMPLGAIN_MASK;
  regmap_read(priv->regmap, 131, &reg);
  priv->ana_gain[AUDIO_ANALOG_VOLUME_MICAMP2] =
   (reg >> RG_AUDPREAMPRGAIN_SFT) & RG_AUDPREAMPRGAIN_MASK;
  break;
 }

 return ret;
}
