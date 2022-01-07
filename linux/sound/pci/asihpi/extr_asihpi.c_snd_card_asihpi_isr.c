
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_card_asihpi {int t; } ;
struct hpi_adapter {TYPE_1__* snd_card; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;


 int WARN_ON (int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void snd_card_asihpi_isr(struct hpi_adapter *a)
{
 struct snd_card_asihpi *asihpi;

 WARN_ON(!a || !a->snd_card || !a->snd_card->private_data);
 asihpi = (struct snd_card_asihpi *)a->snd_card->private_data;
 tasklet_schedule(&asihpi->t);
}
