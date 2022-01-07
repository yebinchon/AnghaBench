
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sst_gain_value {int l_gain; int r_gain; int mute; int ramp_duration; } ;
struct sst_gain_mixer_control {int type; int pipe_id; int instance_id; int module_id; int task_id; TYPE_3__* w; int pname; struct sst_gain_value* gain_val; } ;
struct sst_data {int lock; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {scalar_t__ power; } ;


 int EINVAL ;



 int dev_dbg (int ,char*,int ,int,...) ;
 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sst_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int sst_send_gain_cmd (struct sst_data*,struct sst_gain_value*,int ,int,int ,int ) ;

__attribute__((used)) static int sst_gain_put(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 int ret = 0;
 struct snd_soc_component *cmpnt = snd_soc_kcontrol_component(kcontrol);
 struct sst_data *drv = snd_soc_component_get_drvdata(cmpnt);
 struct sst_gain_mixer_control *mc = (void *)kcontrol->private_value;
 struct sst_gain_value *gv = mc->gain_val;

 mutex_lock(&drv->lock);

 switch (mc->type) {
 case 128:
  gv->l_gain = ucontrol->value.integer.value[0];
  gv->r_gain = ucontrol->value.integer.value[1];
  dev_dbg(cmpnt->dev, "%s: Volume %d, %d\n",
    mc->pname, gv->l_gain, gv->r_gain);
  break;

 case 130:
  gv->mute = !ucontrol->value.integer.value[0];
  dev_dbg(cmpnt->dev, "%s: Mute %d\n", mc->pname, gv->mute);
  break;

 case 129:
  gv->ramp_duration = ucontrol->value.integer.value[0];
  dev_dbg(cmpnt->dev, "%s: Ramp Delay%d\n",
     mc->pname, gv->ramp_duration);
  break;

 default:
  mutex_unlock(&drv->lock);
  dev_err(cmpnt->dev, "Invalid Input- gain type:%d\n",
    mc->type);
  return -EINVAL;
 }

 if (mc->w && mc->w->power)
  ret = sst_send_gain_cmd(drv, gv, mc->task_id,
   mc->pipe_id | mc->instance_id, mc->module_id, 0);
 mutex_unlock(&drv->lock);

 return ret;
}
