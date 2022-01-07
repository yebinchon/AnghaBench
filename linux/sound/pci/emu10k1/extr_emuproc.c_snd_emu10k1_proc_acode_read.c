
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_info_entry {struct snd_emu10k1* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct snd_emu10k1 {scalar_t__ audigy; TYPE_1__ fx8010; } ;


 int snd_emu10k1_efx_read (struct snd_emu10k1*,int) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void snd_emu10k1_proc_acode_read(struct snd_info_entry *entry,
            struct snd_info_buffer *buffer)
{
 u32 pc;
 struct snd_emu10k1 *emu = entry->private_data;

 snd_iprintf(buffer, "FX8010 Instruction List '%s'\n", emu->fx8010.name);
 snd_iprintf(buffer, "  Code dump      :\n");
 for (pc = 0; pc < (emu->audigy ? 1024 : 512); pc++) {
  u32 low, high;

  low = snd_emu10k1_efx_read(emu, pc * 2);
  high = snd_emu10k1_efx_read(emu, pc * 2 + 1);
  if (emu->audigy)
   snd_iprintf(buffer, "    OP(0x%02x, 0x%03x, 0x%03x, 0x%03x, 0x%03x) /* 0x%04x: 0x%08x%08x */\n",
        (high >> 24) & 0x0f,
        (high >> 12) & 0x7ff,
        (high >> 0) & 0x7ff,
        (low >> 12) & 0x7ff,
        (low >> 0) & 0x7ff,
        pc,
        high, low);
  else
   snd_iprintf(buffer, "    OP(0x%02x, 0x%03x, 0x%03x, 0x%03x, 0x%03x) /* 0x%04x: 0x%08x%08x */\n",
        (high >> 20) & 0x0f,
        (high >> 10) & 0x3ff,
        (high >> 0) & 0x3ff,
        (low >> 10) & 0x3ff,
        (low >> 0) & 0x3ff,
        pc,
        high, low);
 }
}
