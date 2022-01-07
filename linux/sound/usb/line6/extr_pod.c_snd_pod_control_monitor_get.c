
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_line6_pod {int monitor_level; } ;
struct snd_line6_pcm {int line6; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct usb_line6_pod* line6_to_pod (int ) ;
 struct snd_line6_pcm* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_pod_control_monitor_get(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *ucontrol)
{
 struct snd_line6_pcm *line6pcm = snd_kcontrol_chip(kcontrol);
 struct usb_line6_pod *pod = line6_to_pod(line6pcm->line6);

 ucontrol->value.integer.value[0] = pod->monitor_level;
 return 0;
}
