
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xonar_cs43xx {int* cs4398_regs; } ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {struct xonar_cs43xx* model_data; } ;


 int CS4398_FILT_SEL ;

__attribute__((used)) static int rolloff_get(struct snd_kcontrol *ctl,
         struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct xonar_cs43xx *data = chip->model_data;

 value->value.enumerated.item[0] =
  (data->cs4398_regs[7] & CS4398_FILT_SEL) != 0;
 return 0;
}
