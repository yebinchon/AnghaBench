
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sof_ipc_reply {int dummy; } ;
struct TYPE_2__ {int size; int cmd; } ;
struct sof_ipc_pm_ctx {TYPE_1__ hdr; } ;
struct snd_sof_dev {int ipc; } ;
typedef int reply ;
typedef int pm_ctx ;


 int SOF_IPC_GLB_PM_MSG ;
 int memset (struct sof_ipc_pm_ctx*,int ,int) ;
 int sof_ipc_tx_message (int ,int,struct sof_ipc_pm_ctx*,int,struct sof_ipc_reply*,int) ;

__attribute__((used)) static int sof_send_pm_ipc(struct snd_sof_dev *sdev, int cmd)
{
 struct sof_ipc_pm_ctx pm_ctx;
 struct sof_ipc_reply reply;

 memset(&pm_ctx, 0, sizeof(pm_ctx));


 pm_ctx.hdr.size = sizeof(pm_ctx);
 pm_ctx.hdr.cmd = SOF_IPC_GLB_PM_MSG | cmd;


 return sof_ipc_tx_message(sdev->ipc, pm_ctx.hdr.cmd, &pm_ctx,
     sizeof(pm_ctx), &reply, sizeof(reply));
}
