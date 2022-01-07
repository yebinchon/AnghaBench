
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int card; } ;
struct snd_usb_caiaqdev {TYPE_1__ chip; } ;
struct snd_kcontrol {int dummy; } ;
struct caiaq_controller {int index; int name; } ;
struct TYPE_5__ {int private_value; int name; } ;


 TYPE_2__ kcontrol_template ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (TYPE_2__*,struct snd_usb_caiaqdev*) ;

__attribute__((used)) static int add_controls(struct caiaq_controller *c, int num,
   struct snd_usb_caiaqdev *cdev)
{
 int i, ret;
 struct snd_kcontrol *kc;

 for (i = 0; i < num; i++, c++) {
  kcontrol_template.name = c->name;
  kcontrol_template.private_value = c->index;
  kc = snd_ctl_new1(&kcontrol_template, cdev);
  ret = snd_ctl_add(cdev->chip.card, kc);
  if (ret < 0)
   return ret;
 }

 return 0;
}
