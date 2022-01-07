
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct fw_scs1x {int input; scalar_t__ input_escape_count; } ;
struct TYPE_2__ {struct fw_scs1x* private_data; } ;


 int WRITE_ONCE (int ,struct snd_rawmidi_substream*) ;

__attribute__((used)) static void midi_capture_trigger(struct snd_rawmidi_substream *stream, int up)
{
 struct fw_scs1x *scs = stream->rmidi->private_data;

 if (up) {
  scs->input_escape_count = 0;
  WRITE_ONCE(scs->input, stream);
 } else {
  WRITE_ONCE(scs->input, ((void*)0));
 }
}
