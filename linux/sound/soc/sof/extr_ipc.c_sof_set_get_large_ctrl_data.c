
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sof_ipc_ctrl_data_params {size_t msg_bytes; size_t pl_size; size_t hdr_bytes; int num_msg; struct sof_ipc_ctrl_data* src; struct sof_ipc_ctrl_data* dst; } ;
struct TYPE_4__ {scalar_t__ size; int cmd; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
struct sof_ipc_ctrl_data {size_t num_elems; int msg_index; size_t elems_remaining; TYPE_2__ rhdr; int type; } ;
struct snd_sof_dev {TYPE_3__* ipc; } ;
struct TYPE_6__ {int tx_mutex; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SOF_IPC_MSG_MAX_SIZE ;
 int kfree (struct sof_ipc_ctrl_data*) ;
 struct sof_ipc_ctrl_data* kzalloc (int ,int ) ;
 int memcpy (struct sof_ipc_ctrl_data*,struct sof_ipc_ctrl_data*,size_t) ;
 size_t min (size_t,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sof_get_ctrl_copy_params (int ,struct sof_ipc_ctrl_data*,struct sof_ipc_ctrl_data*,struct sof_ipc_ctrl_data_params*) ;
 int sof_ipc_tx_message_unlocked (TYPE_3__*,int ,struct sof_ipc_ctrl_data*,scalar_t__,struct sof_ipc_ctrl_data*,scalar_t__) ;

__attribute__((used)) static int sof_set_get_large_ctrl_data(struct snd_sof_dev *sdev,
           struct sof_ipc_ctrl_data *cdata,
           struct sof_ipc_ctrl_data_params *sparams,
           bool send)
{
 struct sof_ipc_ctrl_data *partdata;
 size_t send_bytes;
 size_t offset = 0;
 size_t msg_bytes;
 size_t pl_size;
 int err;
 int i;


 partdata = kzalloc(SOF_IPC_MSG_MAX_SIZE, GFP_KERNEL);
 if (!partdata)
  return -ENOMEM;

 if (send)
  err = sof_get_ctrl_copy_params(cdata->type, cdata, partdata,
            sparams);
 else
  err = sof_get_ctrl_copy_params(cdata->type, partdata, cdata,
            sparams);
 if (err < 0) {
  kfree(partdata);
  return err;
 }

 msg_bytes = sparams->msg_bytes;
 pl_size = sparams->pl_size;


 memcpy(partdata, cdata, sparams->hdr_bytes);


 mutex_lock(&sdev->ipc->tx_mutex);


 for (i = 0; i < sparams->num_msg; i++) {
  send_bytes = min(msg_bytes, pl_size);
  partdata->num_elems = send_bytes;
  partdata->rhdr.hdr.size = sparams->hdr_bytes + send_bytes;
  partdata->msg_index = i;
  msg_bytes -= send_bytes;
  partdata->elems_remaining = msg_bytes;

  if (send)
   memcpy(sparams->dst, sparams->src + offset, send_bytes);

  err = sof_ipc_tx_message_unlocked(sdev->ipc,
        partdata->rhdr.hdr.cmd,
        partdata,
        partdata->rhdr.hdr.size,
        partdata,
        partdata->rhdr.hdr.size);
  if (err < 0)
   break;

  if (!send)
   memcpy(sparams->dst + offset, sparams->src, send_bytes);

  offset += pl_size;
 }

 mutex_unlock(&sdev->ipc->tx_mutex);

 kfree(partdata);
 return err;
}
