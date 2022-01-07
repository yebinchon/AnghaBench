
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sof_widget {TYPE_2__* widget; struct snd_sof_dev* sdev; } ;
struct snd_sof_dev {int dev; } ;
struct TYPE_3__ {struct snd_sof_widget* private; } ;
struct snd_soc_dapm_widget {int name; TYPE_1__ dobj; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int name; } ;




 int SOF_IPC_STREAM_CAPTURE ;
 int SOF_IPC_STREAM_PCM_FREE ;
 int SOF_IPC_STREAM_TRIG_START ;
 int SOF_IPC_STREAM_TRIG_STOP ;
 int dev_dbg (int ,char*,int,int ) ;
 int dev_err (int ,char*,int ) ;
 int ipc_pcm_params (struct snd_sof_widget*,int ) ;
 int ipc_trigger (struct snd_sof_widget*,int ) ;

__attribute__((used)) static int sof_keyword_dapm_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *k, int event)
{
 struct snd_sof_widget *swidget = w->dobj.private;
 struct snd_sof_dev *sdev;
 int ret = 0;

 if (!swidget)
  return 0;

 sdev = swidget->sdev;

 dev_dbg(sdev->dev, "received event %d for widget %s\n",
  event, w->name);


 switch (event) {
 case 128:

  ret = ipc_pcm_params(swidget, SOF_IPC_STREAM_CAPTURE);
  if (ret < 0) {
   dev_err(sdev->dev,
    "error: failed to set pcm params for widget %s\n",
    swidget->widget->name);
   break;
  }


  ret = ipc_trigger(swidget, SOF_IPC_STREAM_TRIG_START);
  if (ret < 0)
   dev_err(sdev->dev,
    "error: failed to trigger widget %s\n",
    swidget->widget->name);
  break;
 case 129:

  ret = ipc_trigger(swidget, SOF_IPC_STREAM_TRIG_STOP);
  if (ret < 0)
   dev_err(sdev->dev,
    "error: failed to trigger widget %s\n",
    swidget->widget->name);


  ret = ipc_trigger(swidget, SOF_IPC_STREAM_PCM_FREE);
  if (ret < 0)
   dev_err(sdev->dev,
    "error: failed to trigger widget %s\n",
    swidget->widget->name);
  break;
 default:
  break;
 }

 return ret;
}
