
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int card; } ;


 int snd_card_ro_proc_new (int ,char*,struct snd_ice1712*,int ) ;
 int stac9460_proc_regs_read ;

__attribute__((used)) static void stac9460_proc_init(struct snd_ice1712 *ice)
{
 snd_card_ro_proc_new(ice->card, "stac9460_codec", ice,
        stac9460_proc_regs_read);
}
