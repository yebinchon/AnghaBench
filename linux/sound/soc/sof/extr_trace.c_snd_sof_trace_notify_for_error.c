
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dtrace_error; int trace_sleep; int dev; scalar_t__ dtrace_is_enabled; } ;


 int dev_err (int ,char*) ;
 int wake_up (int *) ;

void snd_sof_trace_notify_for_error(struct snd_sof_dev *sdev)
{
 if (sdev->dtrace_is_enabled) {
  dev_err(sdev->dev, "error: waking up any trace sleepers\n");
  sdev->dtrace_error = 1;
  wake_up(&sdev->trace_sleep);
 }
}
