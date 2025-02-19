
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sof_ipc_ctrl_data {TYPE_4__* chanv; } ;
struct TYPE_5__ {struct snd_sof_control* private; } ;
struct soc_enum {TYPE_1__ dobj; } ;
struct snd_sof_dev {int ipc; int dev; } ;
struct snd_sof_control {unsigned int num_channels; struct sof_ipc_ctrl_data* control_data; struct snd_sof_dev* sdev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_6__ {scalar_t__* item; } ;
struct TYPE_7__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_8__ {scalar_t__ value; unsigned int channel; } ;


 int SOF_CTRL_CMD_ENUM ;
 int SOF_CTRL_TYPE_VALUE_CHAN_GET ;
 int SOF_IPC_COMP_SET_VALUE ;
 scalar_t__ pm_runtime_active (int ) ;
 int snd_sof_ipc_set_get_comp_data (int ,struct snd_sof_control*,int ,int ,int ,int) ;

int snd_sof_enum_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct soc_enum *se =
  (struct soc_enum *)kcontrol->private_value;
 struct snd_sof_control *scontrol = se->dobj.private;
 struct snd_sof_dev *sdev = scontrol->sdev;
 struct sof_ipc_ctrl_data *cdata = scontrol->control_data;
 unsigned int i, channels = scontrol->num_channels;
 bool change = 0;
 u32 value;


 for (i = 0; i < channels; i++) {
  value = ucontrol->value.enumerated.item[i];
  change = change || (value != cdata->chanv[i].value);
  cdata->chanv[i].channel = i;
  cdata->chanv[i].value = value;
 }


 if (pm_runtime_active(sdev->dev))
  snd_sof_ipc_set_get_comp_data(sdev->ipc, scontrol,
           SOF_IPC_COMP_SET_VALUE,
           SOF_CTRL_TYPE_VALUE_CHAN_GET,
           SOF_CTRL_CMD_ENUM,
           1);

 return change;
}
