
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_line6_pod {scalar_t__ monitor_level; } ;
struct snd_line6_pcm {int line6; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int POD_MONITOR_LEVEL ;
 struct usb_line6_pod* line6_to_pod (int ) ;
 int pod_set_system_param_int (struct usb_line6_pod*,scalar_t__,int ) ;
 struct snd_line6_pcm* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_pod_control_monitor_put(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *ucontrol)
{
 struct snd_line6_pcm *line6pcm = snd_kcontrol_chip(kcontrol);
 struct usb_line6_pod *pod = line6_to_pod(line6pcm->line6);

 if (ucontrol->value.integer.value[0] == pod->monitor_level)
  return 0;

 pod->monitor_level = ucontrol->value.integer.value[0];
 pod_set_system_param_int(pod, ucontrol->value.integer.value[0],
     POD_MONITOR_LEVEL);
 return 1;
}
