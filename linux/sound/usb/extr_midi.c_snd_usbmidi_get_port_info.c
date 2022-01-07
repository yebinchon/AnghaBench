
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_midi {int dummy; } ;
struct snd_seq_port_info {int midi_voices; int type; } ;
struct snd_rawmidi {struct snd_usb_midi* private_data; } ;
struct port_info {int voices; int seq_flags; } ;


 struct port_info* find_port_info (struct snd_usb_midi*,int) ;

__attribute__((used)) static void snd_usbmidi_get_port_info(struct snd_rawmidi *rmidi, int number,
          struct snd_seq_port_info *seq_port_info)
{
 struct snd_usb_midi *umidi = rmidi->private_data;
 struct port_info *port_info;


 port_info = find_port_info(umidi, number);
 if (port_info) {
  seq_port_info->type = port_info->seq_flags;
  seq_port_info->midi_voices = port_info->voices;
 }
}
