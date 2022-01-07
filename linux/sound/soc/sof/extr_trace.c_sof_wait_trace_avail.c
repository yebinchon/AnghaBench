
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_entry_t ;
struct snd_sof_dev {int dtrace_draining; int trace_sleep; int dtrace_is_enabled; } ;
typedef int loff_t ;


 int MAX_SCHEDULE_TIMEOUT ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int init_waitqueue_entry (int *,int ) ;
 int remove_wait_queue (int *,int *) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 int signal_pending (int ) ;
 size_t sof_trace_avail (struct snd_sof_dev*,int ,size_t) ;

__attribute__((used)) static size_t sof_wait_trace_avail(struct snd_sof_dev *sdev,
       loff_t pos, size_t buffer_size)
{
 wait_queue_entry_t wait;
 size_t ret = sof_trace_avail(sdev, pos, buffer_size);


 if (ret)
  return ret;

 if (!sdev->dtrace_is_enabled && sdev->dtrace_draining) {




  sdev->dtrace_draining = 0;
  return 0;
 }


 init_waitqueue_entry(&wait, current);
 set_current_state(TASK_INTERRUPTIBLE);
 add_wait_queue(&sdev->trace_sleep, &wait);

 if (!signal_pending(current)) {

  schedule_timeout(MAX_SCHEDULE_TIMEOUT);
 }
 remove_wait_queue(&sdev->trace_sleep, &wait);

 return sof_trace_avail(sdev, pos, buffer_size);
}
