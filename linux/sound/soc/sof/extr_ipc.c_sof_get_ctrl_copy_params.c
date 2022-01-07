
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sof_ipc_ctrl_data_params {scalar_t__ pl_size; int msg_bytes; int num_msg; scalar_t__ hdr_bytes; int * dst; int * src; } ;
struct sof_ipc_ctrl_data {TYPE_1__* data; scalar_t__ compv; scalar_t__ chanv; } ;
typedef enum sof_ipc_ctrl_type { ____Placeholder_sof_ipc_ctrl_type } sof_ipc_ctrl_type ;
struct TYPE_2__ {scalar_t__ data; } ;


 int DIV_ROUND_UP (int ,scalar_t__) ;
 int EINVAL ;






 scalar_t__ SOF_IPC_MSG_MAX_SIZE ;

__attribute__((used)) static int sof_get_ctrl_copy_params(enum sof_ipc_ctrl_type ctrl_type,
        struct sof_ipc_ctrl_data *src,
        struct sof_ipc_ctrl_data *dst,
        struct sof_ipc_ctrl_data_params *sparams)
{
 switch (ctrl_type) {
 case 131:
 case 130:
  sparams->src = (u8 *)src->chanv;
  sparams->dst = (u8 *)dst->chanv;
  break;
 case 129:
 case 128:
  sparams->src = (u8 *)src->compv;
  sparams->dst = (u8 *)dst->compv;
  break;
 case 133:
 case 132:
  sparams->src = (u8 *)src->data->data;
  sparams->dst = (u8 *)dst->data->data;
  break;
 default:
  return -EINVAL;
 }


 sparams->pl_size = SOF_IPC_MSG_MAX_SIZE - sparams->hdr_bytes;
 sparams->num_msg = DIV_ROUND_UP(sparams->msg_bytes, sparams->pl_size);

 return 0;
}
