
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_card_asihpi {int t; int * llmode_streampriv; TYPE_2__* hpi; } ;
struct TYPE_4__ {TYPE_1__* adapter; } ;
struct TYPE_3__ {int index; } ;


 int HPI_ADAPTER_PROPERTY_IRQ_RATE ;
 int hpi_adapter_set_property (int ,int ,int ,int ) ;
 int hpi_handle_error (int ) ;
 scalar_t__ in_interrupt () ;
 struct snd_card_asihpi* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static void snd_card_asihpi_pcm_int_stop(struct snd_pcm_substream *substream)
{
 struct snd_card_asihpi *card;

 card = snd_pcm_substream_chip(substream);

 hpi_handle_error(hpi_adapter_set_property(card->hpi->adapter->index,
  HPI_ADAPTER_PROPERTY_IRQ_RATE, 0, 0));

 if (in_interrupt())
  card->llmode_streampriv = ((void*)0);
 else {
  tasklet_disable(&card->t);
  card->llmode_streampriv = ((void*)0);
  tasklet_enable(&card->t);
 }
}
