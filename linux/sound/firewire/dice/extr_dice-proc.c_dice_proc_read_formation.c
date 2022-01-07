
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct snd_dice* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_dice {int** tx_pcm_chs; int* tx_midi_ports; int** rx_pcm_chs; int* rx_midi_ports; } ;


 int MAX_STREAMS ;
 int SND_DICE_RATE_MODE_COUNT ;



 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void dice_proc_read_formation(struct snd_info_entry *entry,
         struct snd_info_buffer *buffer)
{
 static const char *const rate_labels[] = {
  [129] = "low",
  [128] = "middle",
  [130] = "high",
 };
 struct snd_dice *dice = entry->private_data;
 int i, j;

 snd_iprintf(buffer, "Output stream from unit:\n");
 for (i = 0; i < SND_DICE_RATE_MODE_COUNT; ++i)
  snd_iprintf(buffer, "\t%s", rate_labels[i]);
 snd_iprintf(buffer, "\tMIDI\n");
 for (i = 0; i < MAX_STREAMS; ++i) {
  snd_iprintf(buffer, "Tx %u:", i);
  for (j = 0; j < SND_DICE_RATE_MODE_COUNT; ++j)
   snd_iprintf(buffer, "\t%u", dice->tx_pcm_chs[i][j]);
  snd_iprintf(buffer, "\t%u\n", dice->tx_midi_ports[i]);
 }

 snd_iprintf(buffer, "Input stream to unit:\n");
 for (i = 0; i < SND_DICE_RATE_MODE_COUNT; ++i)
  snd_iprintf(buffer, "\t%s", rate_labels[i]);
 snd_iprintf(buffer, "\n");
 for (i = 0; i < MAX_STREAMS; ++i) {
  snd_iprintf(buffer, "Rx %u:", i);
  for (j = 0; j < SND_DICE_RATE_MODE_COUNT; ++j)
   snd_iprintf(buffer, "\t%u", dice->rx_pcm_chs[i][j]);
  snd_iprintf(buffer, "\t%u\n", dice->rx_midi_ports[i]);
 }
}
