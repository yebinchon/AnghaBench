
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int SGTL5000_DAP_AVC_THRESHOLD ;
 int * avc_thr_db2reg ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int avc_put_threshold(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 int db;
 u16 reg;

 db = (int)ucontrol->value.integer.value[0];
 if (db < 0 || db > 96)
  return -EINVAL;
 reg = avc_thr_db2reg[db];
 snd_soc_component_write(component, SGTL5000_DAP_AVC_THRESHOLD, reg);

 return 0;
}
