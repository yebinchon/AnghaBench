
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4114 {int card; } ;


 int snd_ak4114_proc_regs_read ;
 int snd_card_ro_proc_new (int ,char*,struct ak4114*,int ) ;

__attribute__((used)) static void snd_ak4114_proc_init(struct ak4114 *ak4114)
{
 snd_card_ro_proc_new(ak4114->card, "ak4114", ak4114,
        snd_ak4114_proc_regs_read);
}
