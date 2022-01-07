
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {int card; } ;


 int snd_card_ro_proc_new (int ,char*,struct snd_korg1212*,int ) ;
 int snd_korg1212_proc_read ;

__attribute__((used)) static void snd_korg1212_proc_init(struct snd_korg1212 *korg1212)
{
 snd_card_ro_proc_new(korg1212->card, "korg1212", korg1212,
        snd_korg1212_proc_read);
}
