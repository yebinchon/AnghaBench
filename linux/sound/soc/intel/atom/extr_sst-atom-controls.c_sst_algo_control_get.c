
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sst_algo_control {int type; int max; int params; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;

 int dev_err (int ,char*,int) ;
 int memcpy (int ,int ,int ) ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int sst_algo_control_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct sst_algo_control *bc = (void *)kcontrol->private_value;
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);

 switch (bc->type) {
 case 128:
  memcpy(ucontrol->value.bytes.data, bc->params, bc->max);
  break;
 default:
  dev_err(component->dev, "Invalid Input- algo type:%d\n",
    bc->type);
  return -EINVAL;

 }
 return 0;
}
