
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int template ;
struct snd_kcontrol_new {unsigned long private_value; int access; int put; int get; int info; int name; int iface; } ;
struct snd_kcontrol {int private_free; } ;
struct sigmadsp_control {struct snd_kcontrol* kcontrol; int samplerates; int name; } ;
struct sigmadsp {TYPE_2__* component; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int snd_card; } ;


 int ENOMEM ;
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_ELEM_ACCESS_READWRITE ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int memset (struct snd_kcontrol_new*,int ,int) ;
 int sigmadsp_control_free ;
 int sigmadsp_ctrl_get ;
 int sigmadsp_ctrl_info ;
 int sigmadsp_ctrl_put ;
 int sigmadsp_samplerate_valid (int ,unsigned int) ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol_new*,struct sigmadsp*) ;

__attribute__((used)) static int sigmadsp_alloc_control(struct sigmadsp *sigmadsp,
 struct sigmadsp_control *ctrl, unsigned int samplerate_mask)
{
 struct snd_kcontrol_new template;
 struct snd_kcontrol *kcontrol;

 memset(&template, 0, sizeof(template));
 template.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 template.name = ctrl->name;
 template.info = sigmadsp_ctrl_info;
 template.get = sigmadsp_ctrl_get;
 template.put = sigmadsp_ctrl_put;
 template.private_value = (unsigned long)ctrl;
 template.access = SNDRV_CTL_ELEM_ACCESS_READWRITE;
 if (!sigmadsp_samplerate_valid(ctrl->samplerates, samplerate_mask))
  template.access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;

 kcontrol = snd_ctl_new1(&template, sigmadsp);
 if (!kcontrol)
  return -ENOMEM;

 kcontrol->private_free = sigmadsp_control_free;
 ctrl->kcontrol = kcontrol;

 return snd_ctl_add(sigmadsp->component->card->snd_card, kcontrol);
}
