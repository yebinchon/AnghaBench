
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_uart16550 {int card; } ;
struct snd_rawmidi {int info_flags; struct snd_uart16550* private_data; int * streams; int name; } ;


 int SNDRV_RAWMIDI_INFO_DUPLEX ;
 int SNDRV_RAWMIDI_INFO_INPUT ;
 int SNDRV_RAWMIDI_INFO_OUTPUT ;
 size_t SNDRV_RAWMIDI_STREAM_INPUT ;
 size_t SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int snd_rawmidi_new (int ,char*,int,int,int,struct snd_rawmidi**) ;
 int snd_rawmidi_set_ops (struct snd_rawmidi*,size_t,int *) ;
 int snd_uart16550_input ;
 int snd_uart16550_output ;
 int snd_uart16550_substreams (int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_uart16550_rmidi(struct snd_uart16550 *uart, int device,
          int outs, int ins,
          struct snd_rawmidi **rmidi)
{
 struct snd_rawmidi *rrawmidi;
 int err;

 err = snd_rawmidi_new(uart->card, "UART Serial MIDI", device,
         outs, ins, &rrawmidi);
 if (err < 0)
  return err;
 snd_rawmidi_set_ops(rrawmidi, SNDRV_RAWMIDI_STREAM_INPUT,
       &snd_uart16550_input);
 snd_rawmidi_set_ops(rrawmidi, SNDRV_RAWMIDI_STREAM_OUTPUT,
       &snd_uart16550_output);
 strcpy(rrawmidi->name, "Serial MIDI");
 snd_uart16550_substreams(&rrawmidi->streams[SNDRV_RAWMIDI_STREAM_OUTPUT]);
 snd_uart16550_substreams(&rrawmidi->streams[SNDRV_RAWMIDI_STREAM_INPUT]);
 rrawmidi->info_flags = SNDRV_RAWMIDI_INFO_OUTPUT |
          SNDRV_RAWMIDI_INFO_INPUT |
          SNDRV_RAWMIDI_INFO_DUPLEX;
 rrawmidi->private_data = uart;
 if (rmidi)
  *rmidi = rrawmidi;
 return 0;
}
