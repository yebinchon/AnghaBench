
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int card; } ;


 int oxygen_proc_read ;
 int snd_card_ro_proc_new (int ,char*,struct oxygen*,int ) ;

__attribute__((used)) static void oxygen_proc_init(struct oxygen *chip)
{
 snd_card_ro_proc_new(chip->card, "oxygen", chip, oxygen_proc_read);
}
