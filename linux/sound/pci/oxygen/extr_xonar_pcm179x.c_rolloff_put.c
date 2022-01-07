
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct xonar_pcm179x {unsigned int dacs; int ** pcm1796_regs; } ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct xonar_pcm179x* model_data; } ;


 int PCM1796_FLT_MASK ;
 int PCM1796_FLT_SHARP ;
 int PCM1796_FLT_SLOW ;
 int PCM1796_REG_BASE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcm1796_write (struct oxygen*,unsigned int,int,int ) ;

__attribute__((used)) static int rolloff_put(struct snd_kcontrol *ctl,
         struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct xonar_pcm179x *data = chip->model_data;
 unsigned int i;
 int changed;
 u8 reg;

 mutex_lock(&chip->mutex);
 reg = data->pcm1796_regs[0][19 - PCM1796_REG_BASE];
 reg &= ~PCM1796_FLT_MASK;
 if (!value->value.enumerated.item[0])
  reg |= PCM1796_FLT_SHARP;
 else
  reg |= PCM1796_FLT_SLOW;
 changed = reg != data->pcm1796_regs[0][19 - PCM1796_REG_BASE];
 if (changed) {
  for (i = 0; i < data->dacs; ++i)
   pcm1796_write(chip, i, 19, reg);
 }
 mutex_unlock(&chip->mutex);
 return changed;
}
