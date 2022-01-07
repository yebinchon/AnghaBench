
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sof_ipc_comp_reply {int dummy; } ;
struct TYPE_4__ {int size; int cmd; } ;
struct TYPE_5__ {int pipeline_id; TYPE_1__ hdr; int type; int id; } ;
struct sof_ipc_buffer {TYPE_2__ comp; int caps; int size; } ;
struct snd_sof_widget {TYPE_3__* widget; struct sof_ipc_buffer* private; int comp_id; } ;
struct snd_sof_dev {int dev; int ipc; } ;
struct snd_soc_tplg_private {int size; int array; } ;
struct snd_soc_tplg_dapm_widget {struct snd_soc_tplg_private priv; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_6__ {int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SOF_COMP_BUFFER ;
 int SOF_IPC_GLB_TPLG_MSG ;
 int SOF_IPC_TPLG_BUFFER_NEW ;
 int buffer_tokens ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 int dev_err (int ,char*,int ) ;
 int kfree (struct sof_ipc_buffer*) ;
 struct sof_ipc_buffer* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int sof_ipc_tx_message (int ,int,struct sof_ipc_buffer*,int,struct sof_ipc_comp_reply*,int) ;
 int sof_parse_tokens (struct snd_soc_component*,struct sof_ipc_buffer*,int ,int ,int ,int ) ;

__attribute__((used)) static int sof_widget_load_buffer(struct snd_soc_component *scomp, int index,
      struct snd_sof_widget *swidget,
      struct snd_soc_tplg_dapm_widget *tw,
      struct sof_ipc_comp_reply *r)
{
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(scomp);
 struct snd_soc_tplg_private *private = &tw->priv;
 struct sof_ipc_buffer *buffer;
 int ret;

 buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;


 buffer->comp.hdr.size = sizeof(*buffer);
 buffer->comp.hdr.cmd = SOF_IPC_GLB_TPLG_MSG | SOF_IPC_TPLG_BUFFER_NEW;
 buffer->comp.id = swidget->comp_id;
 buffer->comp.type = SOF_COMP_BUFFER;
 buffer->comp.pipeline_id = index;

 ret = sof_parse_tokens(scomp, buffer, buffer_tokens,
          ARRAY_SIZE(buffer_tokens), private->array,
          le32_to_cpu(private->size));
 if (ret != 0) {
  dev_err(sdev->dev, "error: parse buffer tokens failed %d\n",
   private->size);
  kfree(buffer);
  return ret;
 }

 dev_dbg(sdev->dev, "buffer %s: size %d caps 0x%x\n",
  swidget->widget->name, buffer->size, buffer->caps);

 swidget->private = buffer;

 ret = sof_ipc_tx_message(sdev->ipc, buffer->comp.hdr.cmd, buffer,
     sizeof(*buffer), r, sizeof(*r));
 if (ret < 0) {
  dev_err(sdev->dev, "error: buffer %s load failed\n",
   swidget->widget->name);
  kfree(buffer);
 }

 return ret;
}
