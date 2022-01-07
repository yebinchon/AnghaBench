
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sst_generic_ipc {TYPE_2__* dsp; int dev; } ;
struct TYPE_9__ {scalar_t__ reply; scalar_t__ err; scalar_t__ msg; } ;
struct TYPE_7__ {int (* get_fw_errcode ) (TYPE_2__*) ;} ;
struct TYPE_8__ {TYPE_1__ fw_ops; } ;


 int ARRAY_SIZE (TYPE_5__*) ;
 int EINVAL ;
 int dev_err (int ,char*,scalar_t__,int ) ;
 int dev_info (int ,char*,scalar_t__,int ) ;
 TYPE_5__* skl_err_map ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;

__attribute__((used)) static int skl_ipc_set_reply_error_code(struct sst_generic_ipc *ipc, u32 reply)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(skl_err_map); i++) {
  if (skl_err_map[i].reply == reply)
   break;
 }

 if (i == ARRAY_SIZE(skl_err_map)) {
  dev_err(ipc->dev, "ipc FW reply: %d FW Error Code: %u\n",
    reply,
    ipc->dsp->fw_ops.get_fw_errcode(ipc->dsp));
  return -EINVAL;
 }

 if (skl_err_map[i].err < 0)
  dev_err(ipc->dev, "ipc FW reply: %s FW Error Code: %u\n",
    skl_err_map[i].msg,
    ipc->dsp->fw_ops.get_fw_errcode(ipc->dsp));
 else
  dev_info(ipc->dev, "ipc FW reply: %s FW Error Code: %u\n",
    skl_err_map[i].msg,
    ipc->dsp->fw_ops.get_fw_errcode(ipc->dsp));

 return skl_err_map[i].err;
}
