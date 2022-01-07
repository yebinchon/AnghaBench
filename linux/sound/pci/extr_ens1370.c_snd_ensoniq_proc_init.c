
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ensoniq {int card; } ;


 int snd_card_ro_proc_new (int ,char*,struct ensoniq*,int ) ;
 int snd_ensoniq_proc_read ;

__attribute__((used)) static void snd_ensoniq_proc_init(struct ensoniq *ensoniq)
{
 snd_card_ro_proc_new(ensoniq->card, "audiopci", ensoniq,
        snd_ensoniq_proc_read);
}
