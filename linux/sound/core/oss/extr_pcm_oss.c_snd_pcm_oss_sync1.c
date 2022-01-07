
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wait_queue_entry_t ;
struct snd_pcm_substream {int pcm; struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {scalar_t__ buffer_used; int buffer; } ;
struct snd_pcm_runtime {int sleep; TYPE_2__* status; TYPE_1__ oss; } ;
typedef int ssize_t ;
typedef scalar_t__ snd_pcm_state_t ;
struct TYPE_4__ {scalar_t__ state; } ;


 int EAGAIN ;
 int EIO ;
 int ERESTARTSYS ;
 int HZ ;
 scalar_t__ SNDRV_PCM_STATE_RUNNING ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int init_waitqueue_entry (int *,int ) ;
 int pcm_dbg (int ,char*,size_t) ;
 int pcm_err (int ,char*) ;
 int remove_wait_queue (int *,int *) ;
 long schedule_timeout (int) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int snd_pcm_oss_write2 (struct snd_pcm_substream*,int ,size_t,int) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_oss_sync1(struct snd_pcm_substream *substream, size_t size)
{
 struct snd_pcm_runtime *runtime;
 ssize_t result = 0;
 snd_pcm_state_t state;
 long res;
 wait_queue_entry_t wait;

 runtime = substream->runtime;
 init_waitqueue_entry(&wait, current);
 add_wait_queue(&runtime->sleep, &wait);



 while (1) {
  result = snd_pcm_oss_write2(substream, runtime->oss.buffer, size, 1);
  if (result > 0) {
   runtime->oss.buffer_used = 0;
   result = 0;
   break;
  }
  if (result != 0 && result != -EAGAIN)
   break;
  result = 0;
  set_current_state(TASK_INTERRUPTIBLE);
  snd_pcm_stream_lock_irq(substream);
  state = runtime->status->state;
  snd_pcm_stream_unlock_irq(substream);
  if (state != SNDRV_PCM_STATE_RUNNING) {
   set_current_state(TASK_RUNNING);
   break;
  }
  res = schedule_timeout(10 * HZ);
  if (signal_pending(current)) {
   result = -ERESTARTSYS;
   break;
  }
  if (res == 0) {
   pcm_err(substream->pcm,
    "OSS sync error - DMA timeout\n");
   result = -EIO;
   break;
  }
 }
 remove_wait_queue(&runtime->sleep, &wait);
 return result;
}
