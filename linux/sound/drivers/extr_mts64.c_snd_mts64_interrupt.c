
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct snd_rawmidi_substream {size_t number; } ;
struct snd_card {struct mts64* private_data; } ;
struct mts64 {int current_midi_input_port; int* mode; int lock; struct snd_rawmidi_substream** midi_input_substream; TYPE_1__* pardev; } ;
struct TYPE_2__ {int port; } ;


 int MTS64_MODE_INPUT_TRIGGERED ;
 int MTS64_STAT_PORT ;
 int mts64_map_midi_input (int) ;
 int mts64_read (int ) ;
 int snd_rawmidi_receive (struct snd_rawmidi_substream*,int*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void snd_mts64_interrupt(void *private)
{
 struct mts64 *mts = ((struct snd_card*)private)->private_data;
 u16 ret;
 u8 status, data;
 struct snd_rawmidi_substream *substream;

 spin_lock(&mts->lock);
 ret = mts64_read(mts->pardev->port);
 data = ret & 0x00ff;
 status = ret >> 8;

 if (status & MTS64_STAT_PORT) {
  mts->current_midi_input_port = mts64_map_midi_input(data);
 } else {
  if (mts->current_midi_input_port == -1)
   goto __out;
  substream = mts->midi_input_substream[mts->current_midi_input_port];
  if (mts->mode[substream->number] & MTS64_MODE_INPUT_TRIGGERED)
   snd_rawmidi_receive(substream, &data, 1);
 }
__out:
 spin_unlock(&mts->lock);
}
