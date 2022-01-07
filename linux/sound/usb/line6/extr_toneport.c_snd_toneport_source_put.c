
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int usbdev; } ;
struct usb_line6_toneport {unsigned int source; TYPE_1__ line6; } ;
struct snd_line6_pcm {int line6; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_7__ {unsigned int* item; } ;
struct TYPE_8__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_9__ {int code; } ;


 unsigned int ARRAY_SIZE (TYPE_4__*) ;
 int EINVAL ;
 struct usb_line6_toneport* line6_to_toneport (int ) ;
 struct snd_line6_pcm* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int toneport_send_cmd (int ,int ,int) ;
 TYPE_4__* toneport_source_info ;

__attribute__((used)) static int snd_toneport_source_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_line6_pcm *line6pcm = snd_kcontrol_chip(kcontrol);
 struct usb_line6_toneport *toneport = line6_to_toneport(line6pcm->line6);
 unsigned int source;

 source = ucontrol->value.enumerated.item[0];
 if (source >= ARRAY_SIZE(toneport_source_info))
  return -EINVAL;
 if (source == toneport->source)
  return 0;

 toneport->source = source;
 toneport_send_cmd(toneport->line6.usbdev,
     toneport_source_info[source].code, 0x0000);
 return 1;
}
