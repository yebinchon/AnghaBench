
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card_asihpi {int card; } ;


 int snd_asihpi_proc_read ;
 int snd_card_ro_proc_new (int ,char*,struct snd_card_asihpi*,int ) ;

__attribute__((used)) static void snd_asihpi_proc_init(struct snd_card_asihpi *asihpi)
{
 snd_card_ro_proc_new(asihpi->card, "info", asihpi,
        snd_asihpi_proc_read);
}
