
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sof_ipc_ctrl_data {struct sof_abi_hdr* data; } ;
struct sof_abi_hdr {int size; } ;
struct TYPE_4__ {struct snd_sof_control* private; } ;
struct soc_bytes_ext {int max; TYPE_1__ dobj; } ;
struct snd_sof_dev {int ipc; int dev; } ;
struct snd_sof_control {int cmd; struct sof_ipc_ctrl_data* control_data; struct snd_sof_dev* sdev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_5__ {int data; } ;
struct TYPE_6__ {TYPE_2__ bytes; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;


 int EINVAL ;
 int SOF_CTRL_TYPE_DATA_SET ;
 int SOF_IPC_COMP_SET_DATA ;
 int dev_err_ratelimited (int ,char*,size_t,...) ;
 int memcpy (struct sof_abi_hdr*,int ,size_t) ;
 scalar_t__ pm_runtime_active (int ) ;
 int snd_sof_ipc_set_get_comp_data (int ,struct snd_sof_control*,int ,int ,int ,int) ;

int snd_sof_bytes_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct soc_bytes_ext *be =
  (struct soc_bytes_ext *)kcontrol->private_value;
 struct snd_sof_control *scontrol = be->dobj.private;
 struct snd_sof_dev *sdev = scontrol->sdev;
 struct sof_ipc_ctrl_data *cdata = scontrol->control_data;
 struct sof_abi_hdr *data = cdata->data;
 size_t size = data->size + sizeof(*data);

 if (be->max > sizeof(ucontrol->value.bytes.data)) {
  dev_err_ratelimited(sdev->dev,
        "error: data max %d exceeds ucontrol data array size\n",
        be->max);
  return -EINVAL;
 }

 if (size > be->max) {
  dev_err_ratelimited(sdev->dev,
        "error: size too big %zu bytes max is %d\n",
        size, be->max);
  return -EINVAL;
 }


 memcpy(data, ucontrol->value.bytes.data, size);


 if (pm_runtime_active(sdev->dev))
  snd_sof_ipc_set_get_comp_data(sdev->ipc, scontrol,
           SOF_IPC_COMP_SET_DATA,
           SOF_CTRL_TYPE_DATA_SET,
           scontrol->cmd,
           1);

 return 0;
}
