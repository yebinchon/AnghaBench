
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_card_asihpi {int t; } ;
struct pci_dev {int dummy; } ;
struct hpi_adapter {TYPE_2__* snd_card; TYPE_1__* adapter; int * interrupt_callback; scalar_t__ interrupt_mode; } ;
struct TYPE_4__ {struct snd_card_asihpi* private_data; } ;
struct TYPE_3__ {int index; } ;


 int HPI_ADAPTER_PROPERTY_IRQ_RATE ;
 int asihpi_adapter_remove (struct pci_dev*) ;
 int hpi_adapter_set_property (int ,int ,int ,int ) ;
 int hpi_handle_error (int ) ;
 struct hpi_adapter* pci_get_drvdata (struct pci_dev*) ;
 int snd_card_free (TYPE_2__*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void snd_asihpi_remove(struct pci_dev *pci_dev)
{
 struct hpi_adapter *hpi = pci_get_drvdata(pci_dev);
 struct snd_card_asihpi *asihpi = hpi->snd_card->private_data;


 if (hpi->interrupt_mode) {
  hpi->interrupt_callback = ((void*)0);
  hpi_handle_error(hpi_adapter_set_property(hpi->adapter->index,
   HPI_ADAPTER_PROPERTY_IRQ_RATE, 0, 0));
  tasklet_kill(&asihpi->t);
 }

 snd_card_free(hpi->snd_card);
 hpi->snd_card = ((void*)0);
 asihpi_adapter_remove(pci_dev);
}
