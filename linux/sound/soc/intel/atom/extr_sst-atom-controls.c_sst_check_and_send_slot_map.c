
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sst_enum {TYPE_2__* w; } ;
struct sst_data {TYPE_3__* pdev; } ;
struct TYPE_4__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; scalar_t__ private_value; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {scalar_t__ power; } ;


 int dev_err (int *,char*,int ) ;
 int sst_send_slot_map (struct sst_data*) ;

__attribute__((used)) static int sst_check_and_send_slot_map(struct sst_data *drv, struct snd_kcontrol *kcontrol)
{
 struct sst_enum *e = (void *)kcontrol->private_value;
 int ret = 0;

 if (e->w && e->w->power)
  ret = sst_send_slot_map(drv);
 else if (!e->w)
  dev_err(&drv->pdev->dev, "Slot control: %s doesn't have DAPM widget!!!\n",
    kcontrol->id.name);
 return ret;
}
