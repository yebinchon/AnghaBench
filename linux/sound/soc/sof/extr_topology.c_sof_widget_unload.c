
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sof_ipc_pipe_new {int id; int core; int list; struct sof_ipc_pipe_new* private; struct sof_ipc_pipe_new* control_data; struct sof_ipc_pipe_new* volume_table; struct sof_ipc_pipe_new* dai_config; struct snd_soc_dapm_widget* widget; } ;
struct TYPE_6__ {struct sof_ipc_pipe_new* private; } ;
struct soc_mixer_control {int max; TYPE_2__ dobj; } ;
struct TYPE_7__ {struct sof_ipc_pipe_new* private; } ;
struct soc_enum {TYPE_3__ dobj; } ;
struct TYPE_8__ {struct sof_ipc_pipe_new* private; } ;
struct soc_bytes_ext {TYPE_4__ dobj; } ;
struct snd_sof_widget {int id; int core; int list; struct snd_sof_widget* private; struct snd_sof_widget* control_data; struct snd_sof_widget* volume_table; struct snd_sof_widget* dai_config; struct snd_soc_dapm_widget* widget; } ;
struct snd_sof_dev {int enabled_cores_mask; int dev; } ;
struct snd_sof_dai {int id; int core; int list; struct snd_sof_dai* private; struct snd_sof_dai* control_data; struct snd_sof_dai* volume_table; struct snd_sof_dai* dai_config; struct snd_soc_dapm_widget* widget; } ;
struct snd_sof_control {int id; int core; int list; struct snd_sof_control* private; struct snd_sof_control* control_data; struct snd_sof_control* volume_table; struct snd_sof_control* dai_config; struct snd_soc_dapm_widget* widget; } ;
struct TYPE_5__ {int kcontrol_type; } ;
struct snd_soc_dobj {TYPE_1__ widget; struct sof_ipc_pipe_new* private; } ;
struct snd_soc_dapm_widget {int num_kcontrols; struct snd_kcontrol_new* kcontrol_news; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol_new {scalar_t__ private_value; } ;





 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int kfree (struct sof_ipc_pipe_new*) ;
 int list_del (int *) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;



 int snd_sof_dsp_core_power_down (struct snd_sof_dev*,int) ;

__attribute__((used)) static int sof_widget_unload(struct snd_soc_component *scomp,
        struct snd_soc_dobj *dobj)
{
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(scomp);
 const struct snd_kcontrol_new *kc;
 struct snd_soc_dapm_widget *widget;
 struct sof_ipc_pipe_new *pipeline;
 struct snd_sof_control *scontrol;
 struct snd_sof_widget *swidget;
 struct soc_mixer_control *sm;
 struct soc_bytes_ext *sbe;
 struct snd_sof_dai *dai;
 struct soc_enum *se;
 int ret = 0;
 int i;

 swidget = dobj->private;
 if (!swidget)
  return 0;

 widget = swidget->widget;

 switch (swidget->id) {
 case 130:
 case 129:
  dai = swidget->private;

  if (dai) {

   kfree(dai->dai_config);
   list_del(&dai->list);
  }
  break;
 case 128:


  pipeline = swidget->private;
  ret = snd_sof_dsp_core_power_down(sdev, 1 << pipeline->core);
  if (ret < 0)
   dev_err(sdev->dev, "error: powering down pipeline schedule core %d\n",
    pipeline->core);


  sdev->enabled_cores_mask &= ~(1 << pipeline->core);

  break;
 default:
  break;
 }
 for (i = 0; i < widget->num_kcontrols; i++) {
  kc = &widget->kcontrol_news[i];
  switch (dobj->widget.kcontrol_type) {
  case 131:
   sm = (struct soc_mixer_control *)kc->private_value;
   scontrol = sm->dobj.private;
   if (sm->max > 1)
    kfree(scontrol->volume_table);
   break;
  case 132:
   se = (struct soc_enum *)kc->private_value;
   scontrol = se->dobj.private;
   break;
  case 133:
   sbe = (struct soc_bytes_ext *)kc->private_value;
   scontrol = sbe->dobj.private;
   break;
  default:
   dev_warn(sdev->dev, "unsupported kcontrol_type\n");
   goto out;
  }
  kfree(scontrol->control_data);
  list_del(&scontrol->list);
  kfree(scontrol);
 }

out:

 kfree(swidget->private);


 list_del(&swidget->list);
 kfree(swidget);

 return ret;
}
