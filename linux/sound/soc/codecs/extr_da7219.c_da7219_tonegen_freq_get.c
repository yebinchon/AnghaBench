
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int val ;
struct soc_mixer_control {unsigned int reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct da7219_priv {int ctrl_lock; int regmap; } ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_raw_read (int ,unsigned int,int *,int) ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int da7219_tonegen_freq_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);
 struct soc_mixer_control *mixer_ctrl =
  (struct soc_mixer_control *) kcontrol->private_value;
 unsigned int reg = mixer_ctrl->reg;
 __le16 val;
 int ret;

 mutex_lock(&da7219->ctrl_lock);
 ret = regmap_raw_read(da7219->regmap, reg, &val, sizeof(val));
 mutex_unlock(&da7219->ctrl_lock);

 if (ret)
  return ret;





 ucontrol->value.integer.value[0] = le16_to_cpu(val);

 return 0;
}
