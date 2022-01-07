
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_compr_stream {TYPE_1__* device; TYPE_2__* runtime; } ;
struct TYPE_4__ {scalar_t__ state; int sleep; } ;
struct TYPE_3__ {int lock; } ;


 int ERESTARTSYS ;
 scalar_t__ SNDRV_PCM_STATE_DRAINING ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,...) ;
 int wait_event_interruptible (int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int snd_compress_wait_for_drain(struct snd_compr_stream *stream)
{
 int ret;
 stream->runtime->state = SNDRV_PCM_STATE_DRAINING;
 mutex_unlock(&stream->device->lock);







 ret = wait_event_interruptible(stream->runtime->sleep,
   (stream->runtime->state != SNDRV_PCM_STATE_DRAINING));
 if (ret == -ERESTARTSYS)
  pr_debug("wait aborted by a signal\n");
 else if (ret)
  pr_debug("wait for drain failed with %d\n", ret);


 wake_up(&stream->runtime->sleep);
 mutex_lock(&stream->device->lock);

 return ret;
}
