
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int bytes; int rmidi; struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {int avail; int buffer_size; int hw_ptr; int sleep; scalar_t__ drain; int * buffer; } ;


 int EINVAL ;
 int rmidi_dbg (int ,char*) ;
 int snd_BUG_ON (int) ;
 scalar_t__ snd_rawmidi_ready (struct snd_rawmidi_substream*) ;
 int wake_up (int *) ;

int __snd_rawmidi_transmit_ack(struct snd_rawmidi_substream *substream, int count)
{
 struct snd_rawmidi_runtime *runtime = substream->runtime;

 if (runtime->buffer == ((void*)0)) {
  rmidi_dbg(substream->rmidi,
     "snd_rawmidi_transmit_ack: output is not active!!!\n");
  return -EINVAL;
 }
 snd_BUG_ON(runtime->avail + count > runtime->buffer_size);
 runtime->hw_ptr += count;
 runtime->hw_ptr %= runtime->buffer_size;
 runtime->avail += count;
 substream->bytes += count;
 if (count > 0) {
  if (runtime->drain || snd_rawmidi_ready(substream))
   wake_up(&runtime->sleep);
 }
 return count;
}
