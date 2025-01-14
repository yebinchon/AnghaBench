
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_6__ {int* value; } ;
struct TYPE_7__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_9__ {TYPE_3__* methods; } ;
struct layout_dev {TYPE_4__ gpio; } ;
struct TYPE_8__ {int (* get_detect ) (TYPE_4__*,int ) ;} ;


 int AOA_NOTIFY_HEADPHONE ;
 int AOA_NOTIFY_LINE_OUT ;
 int ENODEV ;
 struct layout_dev* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (TYPE_4__*,int ) ;
 int stub2 (TYPE_4__*,int ) ;

__attribute__((used)) static int detected_get(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct layout_dev *ldev = snd_kcontrol_chip(kcontrol);
 int v;

 switch (kcontrol->private_value) {
 case 0:
  v = ldev->gpio.methods->get_detect(&ldev->gpio,
         AOA_NOTIFY_HEADPHONE);
  break;
 case 1:
  v = ldev->gpio.methods->get_detect(&ldev->gpio,
         AOA_NOTIFY_LINE_OUT);
  break;
 default:
  return -ENODEV;
 }
 ucontrol->value.integer.value[0] = v;
 return 0;
}
