
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_mixart {int chip_idx; TYPE_1__* mgr; } ;
struct snd_info_entry {struct snd_mixart* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_2__ {int dsp_loaded; int board_type; } ;





 int MIXART_MEM (TYPE_1__*,int ) ;
 int MIXART_MOTHERBOARD_ELF_INDEX ;
 int MIXART_PSEUDOREG_PERF_INTERR_LOAD_OFFSET ;
 int MIXART_PSEUDOREG_PERF_MAILBX_LOAD_OFFSET ;
 int MIXART_PSEUDOREG_PERF_STREAM_LOAD_OFFSET ;
 int MIXART_PSEUDOREG_PERF_SYSTEM_LOAD_OFFSET ;
 int readl_be (int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void snd_mixart_proc_read(struct snd_info_entry *entry,
                                 struct snd_info_buffer *buffer)
{
 struct snd_mixart *chip = entry->private_data;
 u32 ref;

 snd_iprintf(buffer, "Digigram miXart (alsa card %d)\n\n", chip->chip_idx);


 if (chip->mgr->dsp_loaded & ( 1 << MIXART_MOTHERBOARD_ELF_INDEX)) {
  snd_iprintf(buffer, "- hardware -\n");
  switch (chip->mgr->board_type ) {
  case 128 : snd_iprintf(buffer, "\tmiXart8 (no daughter board)\n\n"); break;
  case 130 : snd_iprintf(buffer, "\tmiXart8 AES/EBU\n\n"); break;
  case 129 : snd_iprintf(buffer, "\tmiXart8 Cobranet\n\n"); break;
  default: snd_iprintf(buffer, "\tUNKNOWN!\n\n"); break;
  }

  snd_iprintf(buffer, "- system load -\n");



  ref = readl_be( MIXART_MEM( chip->mgr, MIXART_PSEUDOREG_PERF_SYSTEM_LOAD_OFFSET));

  if (ref) {
   u32 mailbox = 100 * readl_be( MIXART_MEM( chip->mgr, MIXART_PSEUDOREG_PERF_MAILBX_LOAD_OFFSET)) / ref;
   u32 streaming = 100 * readl_be( MIXART_MEM( chip->mgr, MIXART_PSEUDOREG_PERF_STREAM_LOAD_OFFSET)) / ref;
   u32 interr = 100 * readl_be( MIXART_MEM( chip->mgr, MIXART_PSEUDOREG_PERF_INTERR_LOAD_OFFSET)) / ref;

   snd_iprintf(buffer, "\tstreaming          : %d\n", streaming);
   snd_iprintf(buffer, "\tmailbox            : %d\n", mailbox);
   snd_iprintf(buffer, "\tinterrupts handling : %d\n\n", interr);
  }
 }
}
