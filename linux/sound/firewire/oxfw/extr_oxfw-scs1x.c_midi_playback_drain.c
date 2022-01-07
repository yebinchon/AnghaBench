
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct fw_scs1x {int output_idle; int idle_wait; } ;
struct TYPE_2__ {struct fw_scs1x* private_data; } ;


 int wait_event (int ,int ) ;

__attribute__((used)) static void midi_playback_drain(struct snd_rawmidi_substream *stream)
{
 struct fw_scs1x *scs = stream->rmidi->private_data;

 wait_event(scs->idle_wait, scs->output_idle);
}
