
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca0106 {int card; } ;


 int snd_ca0106_proc_i2c_write ;
 int snd_ca0106_proc_iec958 ;
 int * snd_ca0106_proc_reg_read1 ;
 int snd_ca0106_proc_reg_read16 ;
 int snd_ca0106_proc_reg_read2 ;
 int * snd_ca0106_proc_reg_read32 ;
 int snd_ca0106_proc_reg_read8 ;
 int snd_ca0106_proc_reg_write ;
 int snd_ca0106_proc_reg_write32 ;
 int snd_card_ro_proc_new (int ,char*,struct snd_ca0106*,int ) ;
 int snd_card_rw_proc_new (int ,char*,struct snd_ca0106*,int *,int ) ;

int snd_ca0106_proc_init(struct snd_ca0106 *emu)
{
 snd_card_ro_proc_new(emu->card, "iec958", emu, snd_ca0106_proc_iec958);
 snd_card_rw_proc_new(emu->card, "ca0106_reg32", emu,
        snd_ca0106_proc_reg_read32,
        snd_ca0106_proc_reg_write32);
 snd_card_ro_proc_new(emu->card, "ca0106_reg16", emu,
        snd_ca0106_proc_reg_read16);
 snd_card_ro_proc_new(emu->card, "ca0106_reg8", emu,
        snd_ca0106_proc_reg_read8);
 snd_card_rw_proc_new(emu->card, "ca0106_regs1", emu,
        snd_ca0106_proc_reg_read1,
        snd_ca0106_proc_reg_write);
 snd_card_rw_proc_new(emu->card, "ca0106_i2c", emu, ((void*)0),
        snd_ca0106_proc_i2c_write);
 snd_card_ro_proc_new(emu->card, "ca0106_regs2", emu,
        snd_ca0106_proc_reg_read2);
 return 0;
}
