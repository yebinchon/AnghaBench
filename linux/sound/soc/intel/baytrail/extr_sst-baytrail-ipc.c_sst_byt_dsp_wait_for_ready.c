
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_pdata {struct sst_byt* dsp; } ;
struct sst_byt {int dev; int boot_complete; int boot_wait; } ;
struct device {int dummy; } ;


 int EIO ;
 int IPC_BOOT_MSECS ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int ) ;
 int wait_event_timeout (int ,int ,int ) ;

int sst_byt_dsp_wait_for_ready(struct device *dev, struct sst_pdata *pdata)
{
 struct sst_byt *byt = pdata->dsp;
 int err;

 dev_dbg(byt->dev, "wait for dsp reboot\n");

 err = wait_event_timeout(byt->boot_wait, byt->boot_complete,
     msecs_to_jiffies(IPC_BOOT_MSECS));
 if (err == 0) {
  dev_err(byt->dev, "ipc: error DSP boot timeout\n");
  return -EIO;
 }

 dev_dbg(byt->dev, "dsp rebooted\n");
 return 0;
}
