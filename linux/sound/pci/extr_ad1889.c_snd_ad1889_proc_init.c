
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ad1889 {TYPE_1__* card; } ;
struct TYPE_2__ {int driver; } ;


 int snd_ad1889_proc_read ;
 int snd_card_ro_proc_new (TYPE_1__*,int ,struct snd_ad1889*,int ) ;

__attribute__((used)) static void
snd_ad1889_proc_init(struct snd_ad1889 *chip)
{
 snd_card_ro_proc_new(chip->card, chip->card->driver,
        chip, snd_ad1889_proc_read);
}
