
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sof_ipc_comp {int type; } ;
struct snd_sof_widget {TYPE_1__* widget; struct sof_ipc_comp* private; int id; } ;
struct snd_sof_dev {int dev; } ;
struct TYPE_2__ {int name; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int SOF_COMP_KEYWORD_DETECT ;

 int dev_err (int ,char*,int,int ) ;
 int snd_soc_dapm_effect ;
 int snd_soc_tplg_widget_bind_event (TYPE_1__*,int ,int ,int) ;
 int sof_kwd_events ;

__attribute__((used)) static int sof_widget_bind_event(struct snd_sof_dev *sdev,
     struct snd_sof_widget *swidget,
     u16 event_type)
{
 struct sof_ipc_comp *ipc_comp;


 switch (event_type) {
 case 128:

  if (swidget->id != snd_soc_dapm_effect)
   break;

  ipc_comp = swidget->private;
  if (ipc_comp && ipc_comp->type != SOF_COMP_KEYWORD_DETECT)
   break;


  return snd_soc_tplg_widget_bind_event(swidget->widget,
            sof_kwd_events,
            ARRAY_SIZE(sof_kwd_events),
            event_type);
 default:
  break;
 }

 dev_err(sdev->dev,
  "error: invalid event type %d for widget %s\n",
  event_type, swidget->widget->name);
 return -EINVAL;
}
