
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sof_pdata {TYPE_1__* desc; } ;
struct snd_sof_dev {int first_boot; scalar_t__ ipc_timeout; scalar_t__ boot_timeout; int probe_work; int hw_lock; int ipc_lock; int route_list; int dai_list; int widget_list; int kcontrol_list; int pcm_list; struct snd_sof_pdata* pdata; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int ipc_pcm_params; int ipc_msg_data; int load_firmware; int send_msg; int block_write; int block_read; int run; int probe; } ;
struct TYPE_3__ {scalar_t__ ipc_timeout; scalar_t__ boot_timeout; } ;


 int CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ TIMEOUT_DEFAULT_BOOT_MS ;
 scalar_t__ TIMEOUT_DEFAULT_IPC_MS ;
 int dev_set_drvdata (struct device*,struct snd_sof_dev*) ;
 struct snd_sof_dev* devm_kzalloc (struct device*,int,int ) ;
 int schedule_work (int *) ;
 TYPE_2__* sof_ops (struct snd_sof_dev*) ;
 int sof_probe_continue (struct snd_sof_dev*) ;
 int sof_probe_work ;
 int spin_lock_init (int *) ;

int snd_sof_device_probe(struct device *dev, struct snd_sof_pdata *plat_data)
{
 struct snd_sof_dev *sdev;

 sdev = devm_kzalloc(dev, sizeof(*sdev), GFP_KERNEL);
 if (!sdev)
  return -ENOMEM;


 sdev->dev = dev;

 sdev->pdata = plat_data;
 sdev->first_boot = 1;
 dev_set_drvdata(dev, sdev);


 if (!sof_ops(sdev) || !sof_ops(sdev)->probe || !sof_ops(sdev)->run ||
     !sof_ops(sdev)->block_read || !sof_ops(sdev)->block_write ||
     !sof_ops(sdev)->send_msg || !sof_ops(sdev)->load_firmware ||
     !sof_ops(sdev)->ipc_msg_data || !sof_ops(sdev)->ipc_pcm_params)
  return -EINVAL;

 INIT_LIST_HEAD(&sdev->pcm_list);
 INIT_LIST_HEAD(&sdev->kcontrol_list);
 INIT_LIST_HEAD(&sdev->widget_list);
 INIT_LIST_HEAD(&sdev->dai_list);
 INIT_LIST_HEAD(&sdev->route_list);
 spin_lock_init(&sdev->ipc_lock);
 spin_lock_init(&sdev->hw_lock);

 if (IS_ENABLED(CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE))
  INIT_WORK(&sdev->probe_work, sof_probe_work);


 if (plat_data->desc->ipc_timeout == 0)
  sdev->ipc_timeout = TIMEOUT_DEFAULT_IPC_MS;
 else
  sdev->ipc_timeout = plat_data->desc->ipc_timeout;
 if (plat_data->desc->boot_timeout == 0)
  sdev->boot_timeout = TIMEOUT_DEFAULT_BOOT_MS;
 else
  sdev->boot_timeout = plat_data->desc->boot_timeout;

 if (IS_ENABLED(CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE)) {
  schedule_work(&sdev->probe_work);
  return 0;
 }

 return sof_probe_continue(sdev);
}
