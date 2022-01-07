
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct snd_emu10k1* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_emu10k1 {int dummy; } ;


 int CAPTURE_RATE_STATUS ;
 unsigned int snd_emu10k1_ptr20_read (struct snd_emu10k1*,int ,int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,unsigned int,...) ;

__attribute__((used)) static void snd_emu10k1_proc_rates_read(struct snd_info_entry *entry,
      struct snd_info_buffer *buffer)
{
 static int samplerate[8] = { 44100, 48000, 96000, 192000, 4, 5, 6, 7 };
 struct snd_emu10k1 *emu = entry->private_data;
 unsigned int val, tmp, n;
 val = snd_emu10k1_ptr20_read(emu, CAPTURE_RATE_STATUS, 0);
 for (n = 0; n < 4; n++) {
  tmp = val >> (16 + (n*4));
  if (tmp & 0x8) snd_iprintf(buffer, "Channel %d: Rate=%d\n", n, samplerate[tmp & 0x7]);
  else snd_iprintf(buffer, "Channel %d: No input\n", n);
 }
}
