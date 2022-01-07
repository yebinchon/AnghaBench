
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sst_data {int lock; } ;
struct sst_algo_control {int type; TYPE_4__* w; int max; int params; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_5__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; scalar_t__ private_value; } ;
struct TYPE_6__ {int data; } ;
struct TYPE_7__ {TYPE_2__ bytes; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_8__ {scalar_t__ power; } ;


 int EINVAL ;

 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sst_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int sst_send_algo_cmd (struct sst_data*,struct sst_algo_control*) ;

__attribute__((used)) static int sst_algo_control_set(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 int ret = 0;
 struct snd_soc_component *cmpnt = snd_soc_kcontrol_component(kcontrol);
 struct sst_data *drv = snd_soc_component_get_drvdata(cmpnt);
 struct sst_algo_control *bc = (void *)kcontrol->private_value;

 dev_dbg(cmpnt->dev, "control_name=%s\n", kcontrol->id.name);
 mutex_lock(&drv->lock);
 switch (bc->type) {
 case 128:
  memcpy(bc->params, ucontrol->value.bytes.data, bc->max);
  break;
 default:
  mutex_unlock(&drv->lock);
  dev_err(cmpnt->dev, "Invalid Input- algo type:%d\n",
    bc->type);
  return -EINVAL;
 }

 if (bc->w && bc->w->power)
  ret = sst_send_algo_cmd(drv, bc);
 mutex_unlock(&drv->lock);

 return ret;
}
