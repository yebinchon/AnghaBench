
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4113 {int card; } ;


 int snd_ak4113_proc_regs_read ;
 int snd_card_ro_proc_new (int ,char*,struct ak4113*,int ) ;

__attribute__((used)) static void snd_ak4113_proc_init(struct ak4113 *ak4113)
{
 snd_card_ro_proc_new(ak4113->card, "ak4113", ak4113,
        snd_ak4113_proc_regs_read);
}
