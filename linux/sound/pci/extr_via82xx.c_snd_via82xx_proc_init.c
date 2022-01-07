
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via82xx {int card; } ;


 int snd_card_ro_proc_new (int ,char*,struct via82xx*,int ) ;
 int snd_via82xx_proc_read ;

__attribute__((used)) static void snd_via82xx_proc_init(struct via82xx *chip)
{
 snd_card_ro_proc_new(chip->card, "via82xx", chip,
        snd_via82xx_proc_read);
}
