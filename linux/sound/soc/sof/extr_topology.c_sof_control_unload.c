
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd; int size; } ;
struct sof_ipc_free {TYPE_1__ hdr; int id; } ;
struct snd_sof_dev {int ipc; int dev; } ;
struct snd_sof_control {int list; struct snd_sof_control* control_data; int comp_id; } ;
struct snd_soc_dobj {struct snd_sof_control* private; } ;
struct snd_soc_component {int name; } ;
typedef int fcomp ;


 int SOF_IPC_GLB_TPLG_MSG ;
 int SOF_IPC_TPLG_COMP_FREE ;
 int dev_dbg (int ,char*,int ) ;
 int kfree (struct snd_sof_control*) ;
 int list_del (int *) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int sof_ipc_tx_message (int ,int,struct sof_ipc_free*,int,int *,int ) ;

__attribute__((used)) static int sof_control_unload(struct snd_soc_component *scomp,
         struct snd_soc_dobj *dobj)
{
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(scomp);
 struct sof_ipc_free fcomp;
 struct snd_sof_control *scontrol = dobj->private;

 dev_dbg(sdev->dev, "tplg: unload control name : %s\n", scomp->name);

 fcomp.hdr.cmd = SOF_IPC_GLB_TPLG_MSG | SOF_IPC_TPLG_COMP_FREE;
 fcomp.hdr.size = sizeof(fcomp);
 fcomp.id = scontrol->comp_id;

 kfree(scontrol->control_data);
 list_del(&scontrol->list);
 kfree(scontrol);

 return sof_ipc_tx_message(sdev->ipc,
      fcomp.hdr.cmd, &fcomp, sizeof(fcomp),
      ((void*)0), 0);
}
