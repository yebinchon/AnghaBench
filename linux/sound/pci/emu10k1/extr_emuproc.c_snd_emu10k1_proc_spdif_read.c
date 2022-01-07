
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_info_entry {struct snd_emu10k1* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_emu10k1 {TYPE_1__* card_capabilities; } ;
struct TYPE_2__ {scalar_t__ emu_model; } ;


 int CDCS ;
 int CDSRCS ;
 int GPSCS ;
 int GPSRCS ;
 int SRCS_ESTSAMPLERATE ;
 int SRCS_RATELOCKED ;
 int ZVSRCS ;
 int snd_emu1010_fpga_read (struct snd_emu10k1*,int,int*) ;
 int snd_emu10k1_proc_spdif_status (struct snd_emu10k1*,struct snd_info_buffer*,char*,int ,int ) ;
 int snd_emu10k1_ptr_read (struct snd_emu10k1*,int ,int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;
 int val ;

__attribute__((used)) static void snd_emu10k1_proc_spdif_read(struct snd_info_entry *entry,
      struct snd_info_buffer *buffer)
{
 struct snd_emu10k1 *emu = entry->private_data;
 u32 value;
 u32 value2;
 u32 rate;

 if (emu->card_capabilities->emu_model) {
  snd_emu1010_fpga_read(emu, 0x38, &value);
  if ((value & 0x1) == 0) {
   snd_emu1010_fpga_read(emu, 0x2a, &value);
   snd_emu1010_fpga_read(emu, 0x2b, &value2);
   rate = 0x1770000 / (((value << 5) | value2)+1);
   snd_iprintf(buffer, "ADAT Locked : %u\n", rate);
  } else {
   snd_iprintf(buffer, "ADAT Unlocked\n");
  }
  snd_emu1010_fpga_read(emu, 0x20, &value);
  if ((value & 0x4) == 0) {
   snd_emu1010_fpga_read(emu, 0x28, &value);
   snd_emu1010_fpga_read(emu, 0x29, &value2);
   rate = 0x1770000 / (((value << 5) | value2)+1);
   snd_iprintf(buffer, "SPDIF Locked : %d\n", rate);
  } else {
   snd_iprintf(buffer, "SPDIF Unlocked\n");
  }
 } else {
  snd_emu10k1_proc_spdif_status(emu, buffer, "CD-ROM S/PDIF In", CDCS, CDSRCS);
  snd_emu10k1_proc_spdif_status(emu, buffer, "Optical or Coax S/PDIF In", GPSCS, GPSRCS);
 }






}
