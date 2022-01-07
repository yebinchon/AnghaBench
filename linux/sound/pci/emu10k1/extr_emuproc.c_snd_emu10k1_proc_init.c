
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * ops; } ;
struct snd_info_entry {int mode; TYPE_2__ c; int size; struct snd_emu10k1* private_data; void* content; } ;
struct snd_emu10k1 {int card; scalar_t__ audigy; TYPE_1__* card_capabilities; } ;
struct TYPE_3__ {scalar_t__ ca0151_chip; scalar_t__ emu10k2_chip; scalar_t__ emu_model; } ;


 int A_TOTAL_SIZE_CODE ;
 int A_TOTAL_SIZE_GPR ;
 int A_TOTAL_SIZE_TANKMEM_ADDR ;
 int A_TOTAL_SIZE_TANKMEM_DATA ;
 void* SNDRV_INFO_CONTENT_DATA ;
 int S_IFREG ;
 int TOTAL_SIZE_CODE ;
 int TOTAL_SIZE_GPR ;
 int TOTAL_SIZE_TANKMEM_ADDR ;
 int TOTAL_SIZE_TANKMEM_DATA ;
 int snd_card_proc_new (int ,char*,struct snd_info_entry**) ;
 int snd_card_ro_proc_new (int ,char*,struct snd_emu10k1*,int ) ;
 int snd_card_rw_proc_new (int ,char*,struct snd_emu10k1*,int ,int ) ;
 int snd_emu10k1_proc_acode_read ;
 int snd_emu10k1_proc_ops_fx8010 ;
 int snd_emu10k1_proc_rates_read ;
 int snd_emu10k1_proc_read ;
 int snd_emu10k1_proc_spdif_read ;
 int snd_emu10k1_proc_voices_read ;
 int snd_emu_proc_emu1010_reg_read ;
 int snd_emu_proc_io_reg_read ;
 int snd_emu_proc_io_reg_write ;
 int snd_emu_proc_ptr_reg_read00a ;
 int snd_emu_proc_ptr_reg_read00b ;
 int snd_emu_proc_ptr_reg_read20a ;
 int snd_emu_proc_ptr_reg_read20b ;
 int snd_emu_proc_ptr_reg_read20c ;
 int snd_emu_proc_ptr_reg_write00 ;
 int snd_emu_proc_ptr_reg_write20 ;

int snd_emu10k1_proc_init(struct snd_emu10k1 *emu)
{
 struct snd_info_entry *entry;
 snd_card_ro_proc_new(emu->card, "emu10k1", emu, snd_emu10k1_proc_read);

 if (emu->card_capabilities->emu10k2_chip)
  snd_card_ro_proc_new(emu->card, "spdif-in", emu,
         snd_emu10k1_proc_spdif_read);
 if (emu->card_capabilities->ca0151_chip)
  snd_card_ro_proc_new(emu->card, "capture-rates", emu,
         snd_emu10k1_proc_rates_read);

 snd_card_ro_proc_new(emu->card, "voices", emu,
        snd_emu10k1_proc_voices_read);

 if (! snd_card_proc_new(emu->card, "fx8010_gpr", &entry)) {
  entry->content = SNDRV_INFO_CONTENT_DATA;
  entry->private_data = emu;
  entry->mode = S_IFREG | 0444 ;
  entry->size = emu->audigy ? A_TOTAL_SIZE_GPR : TOTAL_SIZE_GPR;
  entry->c.ops = &snd_emu10k1_proc_ops_fx8010;
 }
 if (! snd_card_proc_new(emu->card, "fx8010_tram_data", &entry)) {
  entry->content = SNDRV_INFO_CONTENT_DATA;
  entry->private_data = emu;
  entry->mode = S_IFREG | 0444 ;
  entry->size = emu->audigy ? A_TOTAL_SIZE_TANKMEM_DATA : TOTAL_SIZE_TANKMEM_DATA ;
  entry->c.ops = &snd_emu10k1_proc_ops_fx8010;
 }
 if (! snd_card_proc_new(emu->card, "fx8010_tram_addr", &entry)) {
  entry->content = SNDRV_INFO_CONTENT_DATA;
  entry->private_data = emu;
  entry->mode = S_IFREG | 0444 ;
  entry->size = emu->audigy ? A_TOTAL_SIZE_TANKMEM_ADDR : TOTAL_SIZE_TANKMEM_ADDR ;
  entry->c.ops = &snd_emu10k1_proc_ops_fx8010;
 }
 if (! snd_card_proc_new(emu->card, "fx8010_code", &entry)) {
  entry->content = SNDRV_INFO_CONTENT_DATA;
  entry->private_data = emu;
  entry->mode = S_IFREG | 0444 ;
  entry->size = emu->audigy ? A_TOTAL_SIZE_CODE : TOTAL_SIZE_CODE;
  entry->c.ops = &snd_emu10k1_proc_ops_fx8010;
 }
 snd_card_ro_proc_new(emu->card, "fx8010_acode", emu,
        snd_emu10k1_proc_acode_read);
 return 0;
}
