
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_oxfw_stream_formation {int midi; int pcm; int rate; } ;
struct snd_oxfw {int ** tx_stream_formats; int has_output; int ** rx_stream_formats; } ;
struct snd_info_entry {struct snd_oxfw* private_data; } ;
struct snd_info_buffer {int dummy; } ;
typedef int curr ;


 int AVC_GENERAL_PLUG_DIR_IN ;
 int AVC_GENERAL_PLUG_DIR_OUT ;
 int SND_OXFW_STREAM_FORMAT_ENTRIES ;
 scalar_t__ memcmp (struct snd_oxfw_stream_formation*,struct snd_oxfw_stream_formation*,int) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;
 int snd_oxfw_stream_get_current_formation (struct snd_oxfw*,int ,struct snd_oxfw_stream_formation*) ;
 int snd_oxfw_stream_parse_format (int *,struct snd_oxfw_stream_formation*) ;

__attribute__((used)) static void proc_read_formation(struct snd_info_entry *entry,
    struct snd_info_buffer *buffer)
{
 struct snd_oxfw *oxfw = entry->private_data;
 struct snd_oxfw_stream_formation formation, curr;
 u8 *format;
 char flag;
 int i, err;


 err = snd_oxfw_stream_get_current_formation(oxfw,
          AVC_GENERAL_PLUG_DIR_IN,
          &curr);
 if (err < 0)
  return;

 snd_iprintf(buffer, "Input Stream to device:\n");
 snd_iprintf(buffer, "\tRate\tPCM\tMIDI\n");
 for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
  format = oxfw->rx_stream_formats[i];
  if (format == ((void*)0))
   continue;

  err = snd_oxfw_stream_parse_format(format, &formation);
  if (err < 0)
   continue;

  if (memcmp(&formation, &curr, sizeof(curr)) == 0)
   flag = '*';
  else
   flag = ' ';

  snd_iprintf(buffer, "%c\t%d\t%d\t%d\n", flag,
       formation.rate, formation.pcm, formation.midi);
 }

 if (!oxfw->has_output)
  return;


 err = snd_oxfw_stream_get_current_formation(oxfw,
          AVC_GENERAL_PLUG_DIR_OUT,
          &curr);
 if (err < 0)
  return;

 snd_iprintf(buffer, "Output Stream from device:\n");
 snd_iprintf(buffer, "\tRate\tPCM\tMIDI\n");
 for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
  format = oxfw->tx_stream_formats[i];
  if (format == ((void*)0))
   continue;

  err = snd_oxfw_stream_parse_format(format, &formation);
  if (err < 0)
   continue;

  if (memcmp(&formation, &curr, sizeof(curr)) == 0)
   flag = '*';
  else
   flag = ' ';

  snd_iprintf(buffer, "%c\t%d\t%d\t%d\n", flag,
       formation.rate, formation.pcm, formation.midi);
 }
}
