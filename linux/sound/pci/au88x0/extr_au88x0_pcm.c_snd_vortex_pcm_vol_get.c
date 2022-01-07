
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {struct pcm_vol* pcm_vol; } ;
typedef TYPE_4__ vortex_t ;
struct TYPE_9__ {int subdevice; } ;
struct snd_kcontrol {TYPE_3__ id; } ;
struct TYPE_7__ {int * value; } ;
struct TYPE_8__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct pcm_vol {int * vol; } ;


 scalar_t__ VORTEX_IS_QUAD (TYPE_4__*) ;
 TYPE_4__* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_vortex_pcm_vol_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 int i;
 vortex_t *vortex = snd_kcontrol_chip(kcontrol);
 int subdev = kcontrol->id.subdevice;
 struct pcm_vol *p = &vortex->pcm_vol[subdev];
 int max_chn = (VORTEX_IS_QUAD(vortex) ? 4 : 2);
 for (i = 0; i < max_chn; i++)
  ucontrol->value.integer.value[i] = p->vol[i];
 return 0;
}
