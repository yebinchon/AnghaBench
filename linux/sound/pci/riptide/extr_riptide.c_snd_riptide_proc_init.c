
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_riptide {int card; } ;


 int snd_card_ro_proc_new (int ,char*,struct snd_riptide*,int ) ;
 int snd_riptide_proc_read ;

__attribute__((used)) static void snd_riptide_proc_init(struct snd_riptide *chip)
{
 snd_card_ro_proc_new(chip->card, "riptide", chip,
        snd_riptide_proc_read);
}
