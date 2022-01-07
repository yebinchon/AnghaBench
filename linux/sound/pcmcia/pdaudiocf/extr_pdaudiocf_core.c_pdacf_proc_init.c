
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pdacf {int card; } ;


 int pdacf_proc_read ;
 int snd_card_ro_proc_new (int ,char*,struct snd_pdacf*,int ) ;

__attribute__((used)) static void pdacf_proc_init(struct snd_pdacf *chip)
{
 snd_card_ro_proc_new(chip->card, "pdaudiocf", chip, pdacf_proc_read);
}
