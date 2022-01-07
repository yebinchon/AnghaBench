
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tscs42xx {int coeff_ram_lock; int * coeff_ram; } ;
struct soc_bytes_ext {int max; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct coeff_ram_ctl {size_t addr; struct soc_bytes_ext bytes_ext; } ;


 size_t COEFF_SIZE ;
 int memcpy (int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tscs42xx* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int coeff_ram_get(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
  snd_soc_kcontrol_component(kcontrol);
 struct tscs42xx *tscs42xx = snd_soc_component_get_drvdata(component);
 struct coeff_ram_ctl *ctl =
  (struct coeff_ram_ctl *)kcontrol->private_value;
 struct soc_bytes_ext *params = &ctl->bytes_ext;

 mutex_lock(&tscs42xx->coeff_ram_lock);

 memcpy(ucontrol->value.bytes.data,
  &tscs42xx->coeff_ram[ctl->addr * COEFF_SIZE], params->max);

 mutex_unlock(&tscs42xx->coeff_ram_lock);

 return 0;
}
