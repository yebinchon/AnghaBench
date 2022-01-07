
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_midi {TYPE_1__* card; TYPE_2__* dev; } ;
struct snd_rawmidi_substream {int name; } ;
struct port_info {char* name; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int shortname; } ;


 int dev_err (int *,char*,int,int) ;
 struct port_info* find_port_info (struct snd_usb_midi*,int) ;
 struct snd_rawmidi_substream* snd_usbmidi_find_substream (struct snd_usb_midi*,int,int) ;
 int snprintf (int ,int,char const*,int ,int) ;

__attribute__((used)) static void snd_usbmidi_init_substream(struct snd_usb_midi *umidi,
           int stream, int number,
           struct snd_rawmidi_substream **rsubstream)
{
 struct port_info *port_info;
 const char *name_format;

 struct snd_rawmidi_substream *substream =
  snd_usbmidi_find_substream(umidi, stream, number);
 if (!substream) {
  dev_err(&umidi->dev->dev, "substream %d:%d not found\n", stream,
   number);
  return;
 }


 port_info = find_port_info(umidi, number);
 name_format = port_info ? port_info->name : "%s MIDI %d";
 snprintf(substream->name, sizeof(substream->name),
   name_format, umidi->card->shortname, number + 1);

 *rsubstream = substream;
}
