
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
struct stm32_sai_sub_data {int ctrl_lock; TYPE_1__ iec958; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {int status; } ;
struct TYPE_6__ {TYPE_2__ iec958; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;


 int memcpy (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stm32_sai_sub_data* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_pcm_iec958_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *uctl)
{
 struct stm32_sai_sub_data *sai = snd_kcontrol_chip(kcontrol);

 mutex_lock(&sai->ctrl_lock);
 memcpy(sai->iec958.status, uctl->value.iec958.status, 4);
 mutex_unlock(&sai->ctrl_lock);

 return 0;
}
