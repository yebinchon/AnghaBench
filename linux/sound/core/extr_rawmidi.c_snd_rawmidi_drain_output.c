
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* ops; int rmidi; struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {int drain; scalar_t__ avail; scalar_t__ buffer_size; int sleep; } ;
struct TYPE_2__ {int (* drain ) (struct snd_rawmidi_substream*) ;} ;


 int EIO ;
 int ERESTARTSYS ;
 int HZ ;
 int current ;
 int msleep (int) ;
 int rmidi_warn (int ,char*,long,long) ;
 scalar_t__ signal_pending (int ) ;
 int snd_rawmidi_drop_output (struct snd_rawmidi_substream*) ;
 int stub1 (struct snd_rawmidi_substream*) ;
 long wait_event_interruptible_timeout (int ,int,int) ;

int snd_rawmidi_drain_output(struct snd_rawmidi_substream *substream)
{
 int err;
 long timeout;
 struct snd_rawmidi_runtime *runtime = substream->runtime;

 err = 0;
 runtime->drain = 1;
 timeout = wait_event_interruptible_timeout(runtime->sleep,
    (runtime->avail >= runtime->buffer_size),
    10*HZ);
 if (signal_pending(current))
  err = -ERESTARTSYS;
 if (runtime->avail < runtime->buffer_size && !timeout) {
  rmidi_warn(substream->rmidi,
      "rawmidi drain error (avail = %li, buffer_size = %li)\n",
      (long)runtime->avail, (long)runtime->buffer_size);
  err = -EIO;
 }
 runtime->drain = 0;
 if (err != -ERESTARTSYS) {

  if (substream->ops->drain)
   substream->ops->drain(substream);
  else
   msleep(50);
  snd_rawmidi_drop_output(substream);
 }
 return err;
}
