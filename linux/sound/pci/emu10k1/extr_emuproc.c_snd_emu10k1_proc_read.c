
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_info_entry {struct snd_emu10k1* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_5__ {scalar_t__ bytes; } ;
struct TYPE_6__ {TYPE_2__ etram_pages; int itram_size; } ;
struct snd_emu10k1 {int* efx_voices_mask; scalar_t__ audigy; TYPE_3__ fx8010; TYPE_1__* card_capabilities; } ;
struct TYPE_4__ {scalar_t__ ecard; } ;


 int A_FXRT1 ;
 int A_FXRT2 ;
 int FXRT ;
 int NUM_G ;
 unsigned int snd_emu10k1_ptr_read (struct snd_emu10k1*,int ,int) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void snd_emu10k1_proc_read(struct snd_info_entry *entry,
      struct snd_info_buffer *buffer)
{

 static char *creative_outs[32] = {
           "AC97 Left",
           "AC97 Right",
           "Optical IEC958 Left",
           "Optical IEC958 Right",
           "Center",
           "LFE",
           "Headphone Left",
           "Headphone Right",
           "Surround Left",
           "Surround Right",
           "PCM Capture Left",
           "PCM Capture Right",
           "MIC Capture",
           "AC97 Surround Left",
           "AC97 Surround Right",
           "???",
           "???",
           "Analog Center",
           "Analog LFE",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???"
 };

 static char *audigy_outs[64] = {
           "Digital Front Left",
           "Digital Front Right",
           "Digital Center",
           "Digital LEF",
           "Headphone Left",
           "Headphone Right",
           "Digital Rear Left",
           "Digital Rear Right",
           "Front Left",
           "Front Right",
           "Center",
           "LFE",
           "???",
           "???",
           "Rear Left",
           "Rear Right",
           "AC97 Front Left",
           "AC97 Front Right",
           "ADC Capture Left",
           "ADC Capture Right",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "???",
           "FXBUS2_0",
           "FXBUS2_1",
           "FXBUS2_2",
           "FXBUS2_3",
           "FXBUS2_4",
           "FXBUS2_5",
           "FXBUS2_6",
           "FXBUS2_7",
           "FXBUS2_8",
           "FXBUS2_9",
           "FXBUS2_10",
           "FXBUS2_11",
           "FXBUS2_12",
           "FXBUS2_13",
           "FXBUS2_14",
           "FXBUS2_15",
           "FXBUS2_16",
           "FXBUS2_17",
           "FXBUS2_18",
           "FXBUS2_19",
           "FXBUS2_20",
           "FXBUS2_21",
           "FXBUS2_22",
           "FXBUS2_23",
           "FXBUS2_24",
           "FXBUS2_25",
           "FXBUS2_26",
           "FXBUS2_27",
           "FXBUS2_28",
           "FXBUS2_29",
           "FXBUS2_30",
           "FXBUS2_31"
 };

 struct snd_emu10k1 *emu = entry->private_data;
 unsigned int val, val1;
 int nefx = emu->audigy ? 64 : 32;
 char **outputs = emu->audigy ? audigy_outs : creative_outs;
 int idx;

 snd_iprintf(buffer, "EMU10K1\n\n");
 snd_iprintf(buffer, "Card                  : %s\n",
      emu->audigy ? "Audigy" : (emu->card_capabilities->ecard ? "EMU APS" : "Creative"));
 snd_iprintf(buffer, "Internal TRAM (words) : 0x%x\n", emu->fx8010.itram_size);
 snd_iprintf(buffer, "External TRAM (words) : 0x%x\n", (int)emu->fx8010.etram_pages.bytes / 2);
 snd_iprintf(buffer, "\n");
 snd_iprintf(buffer, "Effect Send Routing   :\n");
 for (idx = 0; idx < NUM_G; idx++) {
  val = emu->audigy ?
   snd_emu10k1_ptr_read(emu, A_FXRT1, idx) :
   snd_emu10k1_ptr_read(emu, FXRT, idx);
  val1 = emu->audigy ?
   snd_emu10k1_ptr_read(emu, A_FXRT2, idx) :
   0;
  if (emu->audigy) {
   snd_iprintf(buffer, "Ch%i: A=%i, B=%i, C=%i, D=%i, ",
    idx,
    val & 0x3f,
    (val >> 8) & 0x3f,
    (val >> 16) & 0x3f,
    (val >> 24) & 0x3f);
   snd_iprintf(buffer, "E=%i, F=%i, G=%i, H=%i\n",
    val1 & 0x3f,
    (val1 >> 8) & 0x3f,
    (val1 >> 16) & 0x3f,
    (val1 >> 24) & 0x3f);
  } else {
   snd_iprintf(buffer, "Ch%i: A=%i, B=%i, C=%i, D=%i\n",
    idx,
    (val >> 16) & 0x0f,
    (val >> 20) & 0x0f,
    (val >> 24) & 0x0f,
    (val >> 28) & 0x0f);
  }
 }
 snd_iprintf(buffer, "\nCaptured FX Outputs   :\n");
 for (idx = 0; idx < nefx; idx++) {
  if (emu->efx_voices_mask[idx/32] & (1 << (idx%32)))
   snd_iprintf(buffer, "  Output %02i [%s]\n", idx, outputs[idx]);
 }
 snd_iprintf(buffer, "\nAll FX Outputs        :\n");
 for (idx = 0; idx < (emu->audigy ? 64 : 32); idx++)
  snd_iprintf(buffer, "  Output %02i [%s]\n", idx, outputs[idx]);
}
