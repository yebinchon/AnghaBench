
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t size; int cmd; } ;
struct TYPE_11__ {int type; int pipeline_id; TYPE_3__ hdr; int id; } ;
struct TYPE_8__ {int size; } ;
struct TYPE_12__ {TYPE_1__ hdr; } ;
struct sof_widget_data {size_t size; TYPE_7__* control; int ctrl_type; int ipc_cmd; TYPE_4__ comp; TYPE_2__* pdata; int data; TYPE_5__ config; } ;
struct sof_ipc_comp_reply {int dummy; } ;
struct sof_ipc_comp_process {size_t size; TYPE_7__* control; int ctrl_type; int ipc_cmd; TYPE_4__ comp; TYPE_2__* pdata; int data; TYPE_5__ config; } ;
struct snd_sof_widget {struct sof_widget_data* private; int comp_id; struct snd_soc_dapm_widget* widget; } ;
struct snd_sof_dev {int dev; int ipc; } ;
struct snd_soc_tplg_private {int size; int array; } ;
struct snd_soc_tplg_dapm_widget {struct snd_soc_tplg_private priv; } ;
struct snd_soc_dapm_widget {int num_kcontrols; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_13__ {int cmd; scalar_t__ readback_offset; } ;
struct TYPE_9__ {scalar_t__ size; int data; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SOF_COMP_NONE ;
 int SOF_IPC_GLB_TPLG_MSG ;
 size_t SOF_IPC_MSG_MAX_SIZE ;
 int SOF_IPC_TPLG_COMP_NEW ;
 int comp_tokens ;
 int dev_err (int ,char*,...) ;
 struct sof_widget_data* kcalloc (int,int,int ) ;
 int kfree (struct sof_widget_data*) ;
 struct sof_widget_data* kzalloc (size_t,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int ,scalar_t__) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_sof_ipc_set_get_comp_data (int ,TYPE_7__*,int ,int ,int ,int) ;
 int sof_dbg_comp_config (struct snd_soc_component*,TYPE_5__*) ;
 int sof_get_control_data (struct snd_sof_dev*,struct snd_soc_dapm_widget*,struct sof_widget_data*,size_t*) ;
 int sof_ipc_tx_message (int ,int,struct sof_widget_data*,size_t,struct sof_ipc_comp_reply*,int) ;
 int sof_parse_tokens (struct snd_soc_component*,TYPE_5__*,int ,int ,int ,int) ;

__attribute__((used)) static int sof_process_load(struct snd_soc_component *scomp, int index,
       struct snd_sof_widget *swidget,
       struct snd_soc_tplg_dapm_widget *tw,
       struct sof_ipc_comp_reply *r,
       int type)
{
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(scomp);
 struct snd_soc_dapm_widget *widget = swidget->widget;
 struct snd_soc_tplg_private *private = &tw->priv;
 struct sof_ipc_comp_process *process = ((void*)0);
 struct sof_widget_data *wdata = ((void*)0);
 size_t ipc_data_size = 0;
 size_t ipc_size;
 int offset = 0;
 int ret = 0;
 int i;

 if (type == SOF_COMP_NONE) {
  dev_err(sdev->dev, "error: invalid process comp type %d\n",
   type);
  return -EINVAL;
 }


 if (widget->num_kcontrols) {
  wdata = kcalloc(widget->num_kcontrols,
    sizeof(*wdata),
    GFP_KERNEL);

  if (!wdata)
   return -ENOMEM;


  ret = sof_get_control_data(sdev, widget, wdata,
        &ipc_data_size);

  if (ret < 0)
   goto out;
 }

 ipc_size = sizeof(struct sof_ipc_comp_process) +
  le32_to_cpu(private->size) +
  ipc_data_size;


 if (ipc_size > SOF_IPC_MSG_MAX_SIZE) {
  ipc_size -= ipc_data_size;
  ipc_data_size = 0;
 }

 process = kzalloc(ipc_size, GFP_KERNEL);
 if (!process) {
  ret = -ENOMEM;
  goto out;
 }


 process->comp.hdr.size = ipc_size;
 process->comp.hdr.cmd = SOF_IPC_GLB_TPLG_MSG | SOF_IPC_TPLG_COMP_NEW;
 process->comp.id = swidget->comp_id;
 process->comp.type = type;
 process->comp.pipeline_id = index;
 process->config.hdr.size = sizeof(process->config);

 ret = sof_parse_tokens(scomp, &process->config, comp_tokens,
          ARRAY_SIZE(comp_tokens), private->array,
          le32_to_cpu(private->size));
 if (ret != 0) {
  dev_err(sdev->dev, "error: parse process.cfg tokens failed %d\n",
   le32_to_cpu(private->size));
  goto err;
 }

 sof_dbg_comp_config(scomp, &process->config);






 if (ipc_data_size) {
  for (i = 0; i < widget->num_kcontrols; i++) {
   memcpy(&process->data + offset,
          wdata[i].pdata->data,
          wdata[i].pdata->size);
   offset += wdata[i].pdata->size;
  }
 }

 process->size = ipc_data_size;
 swidget->private = process;

 ret = sof_ipc_tx_message(sdev->ipc, process->comp.hdr.cmd, process,
     ipc_size, r, sizeof(*r));

 if (ret < 0) {
  dev_err(sdev->dev, "error: create process failed\n");
  goto err;
 }


 if (ipc_data_size)
  goto out;


 for (i = 0; i < widget->num_kcontrols; i++) {
  wdata[i].control->readback_offset = 0;
  ret = snd_sof_ipc_set_get_comp_data(sdev->ipc, wdata[i].control,
          wdata[i].ipc_cmd,
          wdata[i].ctrl_type,
          wdata[i].control->cmd,
          1);
  if (ret != 0) {
   dev_err(sdev->dev, "error: send control failed\n");
   break;
  }
 }

err:
 if (ret < 0)
  kfree(process);
out:
 kfree(wdata);
 return ret;
}
