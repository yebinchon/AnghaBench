
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {int data; } ;
struct TYPE_5__ {TYPE_3__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct arizona {int dac_comp_lock; int dac_comp_coeff; } ;
struct TYPE_4__ {int parent; } ;


 int be16_to_cpu (int ) ;
 struct arizona* dev_get_drvdata (int ) ;
 int memcpy (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int wm5102_out_comp_coeff_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct arizona *arizona = dev_get_drvdata(component->dev->parent);

 mutex_lock(&arizona->dac_comp_lock);
 memcpy(&arizona->dac_comp_coeff, ucontrol->value.bytes.data,
        sizeof(arizona->dac_comp_coeff));
 arizona->dac_comp_coeff = be16_to_cpu(arizona->dac_comp_coeff);
 mutex_unlock(&arizona->dac_comp_lock);

 return 0;
}
