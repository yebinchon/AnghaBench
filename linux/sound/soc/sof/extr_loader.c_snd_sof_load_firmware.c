
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_dev {int dev; } ;
struct TYPE_2__ {int (* load_firmware ) (struct snd_sof_dev*) ;} ;


 int dev_dbg (int ,char*) ;
 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*) ;

int snd_sof_load_firmware(struct snd_sof_dev *sdev)
{
 dev_dbg(sdev->dev, "loading firmware\n");

 if (sof_ops(sdev)->load_firmware)
  return sof_ops(sdev)->load_firmware(sdev);
 return 0;
}
