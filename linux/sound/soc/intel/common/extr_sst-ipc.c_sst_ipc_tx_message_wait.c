
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_ipc_message {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* check_dsp_lp_on ) (int ,int) ;} ;
struct sst_generic_ipc {int dsp; TYPE_1__ ops; } ;


 int EIO ;
 int ipc_tx_message (struct sst_generic_ipc*,struct sst_ipc_message,struct sst_ipc_message*,int) ;
 scalar_t__ stub1 (int ,int) ;
 scalar_t__ stub2 (int ,int) ;

int sst_ipc_tx_message_wait(struct sst_generic_ipc *ipc,
 struct sst_ipc_message request, struct sst_ipc_message *reply)
{
 int ret;






 if (ipc->ops.check_dsp_lp_on)
  if (ipc->ops.check_dsp_lp_on(ipc->dsp, 1))
   return -EIO;

 ret = ipc_tx_message(ipc, request, reply, 1);

 if (ipc->ops.check_dsp_lp_on)
  if (ipc->ops.check_dsp_lp_on(ipc->dsp, 0))
   return -EIO;

 return ret;
}
