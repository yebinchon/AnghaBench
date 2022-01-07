
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct fw_scs1x {int output_bytes; int output_escaped; int output_idle; int error; int output; int work; scalar_t__ transaction_bytes; scalar_t__ output_status; } ;
struct TYPE_2__ {struct fw_scs1x* private_data; } ;


 int WRITE_ONCE (int ,struct snd_rawmidi_substream*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void midi_playback_trigger(struct snd_rawmidi_substream *stream, int up)
{
 struct fw_scs1x *scs = stream->rmidi->private_data;

 if (up) {
  scs->output_status = 0;
  scs->output_bytes = 1;
  scs->output_escaped = 0;
  scs->output_idle = 0;
  scs->transaction_bytes = 0;
  scs->error = 0;

  WRITE_ONCE(scs->output, stream);
  schedule_work(&scs->work);
 } else {
  WRITE_ONCE(scs->output, ((void*)0));
 }
}
