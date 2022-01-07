
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int card; } ;


 int snd_card_rw_proc_new (int ,char*,struct snd_ice1712*,int ,int ) ;
 int wm_proc_regs_read ;
 int wm_proc_regs_write ;

__attribute__((used)) static void wm_proc_init(struct snd_ice1712 *ice)
{
 snd_card_rw_proc_new(ice->card, "wm_codec", ice, wm_proc_regs_read,
        wm_proc_regs_write);
}
