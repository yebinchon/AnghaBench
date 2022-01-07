
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu10k1x {int card; } ;


 int snd_card_rw_proc_new (int ,char*,struct emu10k1x*,int ,int ) ;
 int snd_emu10k1x_proc_reg_read ;
 int snd_emu10k1x_proc_reg_write ;

__attribute__((used)) static int snd_emu10k1x_proc_init(struct emu10k1x *emu)
{
 snd_card_rw_proc_new(emu->card, "emu10k1x_regs", emu,
        snd_emu10k1x_proc_reg_read,
        snd_emu10k1x_proc_reg_write);
 return 0;
}
