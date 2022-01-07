
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xonar_pcm179x {int** pcm1796_regs; } ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {struct xonar_pcm179x* model_data; } ;


 int PCM1796_DME ;
 int PCM1796_REG_BASE ;

__attribute__((used)) static int deemph_get(struct snd_kcontrol *ctl,
         struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct xonar_pcm179x *data = chip->model_data;

 value->value.integer.value[0] =
  !!(data->pcm1796_regs[0][18 - PCM1796_REG_BASE] & PCM1796_DME);
 return 0;
}
